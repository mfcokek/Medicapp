

import UIKit

class MediceneProducts {
    var productName: String?
    var productDetails: String?
    var productHastalık: String?
    var productKullanim: String?
    var productEtki: String?
    
    
    init(prName:String, prDetails:String, prHastalık: String, prKullanim: String, prEtki: String) {
        self.productName = prName
        self.productDetails = prDetails
        self.productEtki = prEtki
        self.productHastalık = prHastalık
        self.productKullanim = prKullanim
        
        
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    @IBOutlet weak var tblMediceneProducts: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var productArray = [MediceneProducts]()
    var filteredData: [MediceneProducts]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let Prozac = MediceneProducts(prName: "Prozac 20mg", prDetails: "Fluoksetin bir antidepresan ilaç grubu olan seçici seratonin geri alım inhibitörlerinden birisidir. Depresyon tedavisinde yaygın olarak kullanılan fluoksetin aynı zamanda obsesif kompülsif bozukluk ve yeme bozukluğu (blumia) tedavisinde de kullanılmaktadır. Fluoksetin depresyon tedavisinde oldukça etkili olup, eski antidepresanlara göre yan etkileri daha azdır.", prHastalık: "Depresyon mod düşüklüğü, iştah kaybı, konsantrasyon güçlüğü ve uyku bozuklukları gibi semptomların görüldüğü ciddi mental bir hastalıktır. Fluoksetin etken maddesi de depresyon tedavisinde tüm dünyada yaygın şekilde kullanılmaktadır.", prKullanim: "Hekiminizin reçete ettiği dozdaki ilacınızı, günün uygun saatlerinde bir bardak su ile alınız. İlacınızın dozu hastalığınızın türüne ve durumuna göre belirlendiği için bireysel kararlarla ilacınızın dozunu değiştirmeyin. Genellikle ilacın yan etkilerini azaltmak için düşük dozla başlanıp, doz giderek arttırılır.",prEtki: "Mide bulantısı Baş ağrısı Uykusuzluk İshal Güçsüzlük ve yorgunluk")
        productArray.append(Prozac)
        let  Parol = MediceneProducts(prName: "Parol 400mg", prDetails: "Parol, analjezik (ağrı kesici) ve ateş düşürücü reçeteli bir ilaçtır. Beyaz renkli, yuvarlak ve çentikli tabletlerden oluşur. Etkin maddesi parasetamol, vücutta iltihap gibi nedenlerle gelişen ağrı ve ateş belirtilerini giderme özelliğine sahiptir. İlaç hastalıkların tedavisinde kullanılmaz. Çocukların kullanımına ve yetişkinlerin ihtiyacına uygun üretilen birçok formu vardır.", prHastalık: "Vücuttaki bazı kimyasalların salınımını baskılayarak ağrıları, Vücuttaki ısı kaybını artırarak ateşi azaltır.", prKullanim: "İlacı kullanmadan önce aldığınız diğer ilaçlar ve genel sağlık durumunuz ile ilgili doktorunuzu detaylı şekilde bilgilendirin. İlacı bol suyla bütün olarak çiğnemeden yutun. Aç veya tok karnına içilebiliyor olsa da tok karnına içildiğinde etkisi azalabilir. 4-6 saat arayla günde 1-2 tablet içebilirsiniz. 8 tabletten fazla kesinlikle kullanmayın. Unutulan dozları dengelemek için çift doz almayın. Ağrı-ateş şikâyetleriniz 1 haftadan uzun sürer ya da etkisinin çok güçlü veya zayıf olduğunu düşünürseniz doktorun bilgisi dışında aldığınız dozu değiştirmeyin. Doktor söylemedikçe ilacı uzun süre içmeyin ve sadece ihtiyaç halinde kullanın. İlacı reçete edildiği şekilde alın.",prEtki: "Bulantı, kusma veya hazımsızlık gibi mide rahatsızlıkları İshal Baş dönmesi Uyku hali Ciltte kızarıklık")
        productArray.append(Parol)
        let  majezik = MediceneProducts(prName: "Majezik", prDetails: "Majezik kas-iskelet sistemi hastalıklarının ağrı ve iltihap belirtilerini tedavi etmek için kullanılan reçeteli bir ilaçtır. Steroid olmayan anti-enflamatuar ilaçlar (NSAİİ) olarak bilinen grupta yer alır. Etkin maddesi Flurbiprofen, ağrıya ve iltihaba neden olan hormonları azaltma özelliğine sahiptir. Mavi renkli, 100 mg’lık tablet formundadır; kapsül, jel, sprey ve gargara formları da vardır. Doktor kontrolü dışında uzun süreli kullanımı kalp krizi ve felç riskini artırabilir.", prHastalık: "Majezik şu hastalıkların tedavisinde kullanılır  Romatoid artrit Adet ağrısı Osteoartrit Bel veya sırt ağrısı Ankilozan spondilit Gut artriti Bursit, Tendinit Yumuşak doku yaralanmaları", prKullanim: "Genellikle kullanılan günlük doz miktarı bölünmüş dozlar halinde 150-200 mg’dır (günde 1,5 veya 2 tablet). Hastalığın belirtilerinin şiddetine göre günlük doz miktarı 300 mg’a kadar artırılabilir. İlaç günde birden fazla kullanılacaksa bir kerede alınacak doz miktarı 100 mg’ı aşmamalıdır. Romatoid artrit veya osteoartrit belirtilerinin giderilmesi için önerilen günlük doz miktarı günde iki, üç veya dört defa bölünerek uygulanmak üzere 200-300 mg.’dır. Adet sancılarında başlangıçta 100 mg yani 1 tablet alınmalıdır. Bunu takiben 4-6 saatte bir 50-100 mg alınabilir.",prEtki: "Ağız kuruluğu ve tat almada bozukluk Mide ağrısı ve rahatsızlıkları Mide bulantısı, kusma Kabızlık İshal Halsizlik Baş dönmesi Titreme Huzursuzluk Çarpıntı Kulak çınlaması Döküntü ve kaşıntı gibi hafif alerjik reaksiyon")
        productArray.append(majezik)
        let  rexapin = MediceneProducts(prName: "Rexapin", prDetails: "Rexapin 28 ve 84 tabletlik blister ambalajlarda sunulan film kaplı tablettir. Rexapin film kaplı tabletler yuvarlak ve beyaz renktedir.  Rexapin antipsikotikler adı verilen bir ilaç grubuna aittir.",prHastalık: "Rexapin, gerçekte var olmayan şeyleri duymak, görmek veya hissetmek, yanlış inanışlar, anormal şüphecilik, içine kapanmak gibi semptomların eşlik ettiği bir hastalığın tedavisinde kullanılır. Ayrıca bu hastalığı yaşayan hastalar kendilerini depresif, endişeli veya gergin hissedebilirler.", prKullanim: "Rexapin’i her zaman doktorunuzun size anlattığı şekilde kullanınız. Emin olmadığınız takdirde doktor veya eczacınıza sorunuz.Doktorunuz kaç tane Rexapin tablet kullanmanız ve ilaca ne kadar süreyle devam etmeniz gerektiğine karar verecektir. Rexapin’in günlük dozu 5 ila 20 mg arasındadır. Belirtilerinizin tekrar görülmesi durumunda doktorunuza danışınız ancak doktorunuz söylemedikçe Rexapin kullanmayı bırakmayınız.", prEtki: "Aleıjik reaksiyon (öm. ağız ve boğazm şişmesi, kaşıntı, döküntü) Kalpte ritim bozukluğu Koma veya ketoasidoz (kan ve idrardaki ketonlar) ile bağlantılı şeker hastalığı veya şeker hastalığının kötüleşmesi")
        productArray.append(rexapin)
        let  nurofen = MediceneProducts(prName: "Nurofen", prDetails: "Nurofen (ibuprofen) özellikle iltihapla birlikte gelişen ağrıları dindirmek için kullanılan reçeteli bir ilaçtır. Steroid olmayan antienflamatuar (NSAII) ilaç grubuna dahildir. Üç farklı formu olan ilaç film kaplı yuvarlak haplardan oluşur. Etkin maddesi ibuprofen iltihap giderici ve ateş düşürücü özelliklere de sahiptir. Soya yağı, sodyum ve sakaroz içerdiği yardımcı maddelerinden bazılarıdır. İlaç doktor tavsiyesi dışında kullanılmamalıdır.",prHastalık: "Baş ağrısı veya migren Sırt ağrısı Kas-iskelet ağrısı Diş ağrısı Adet sancıları Nevralji Romatizmal ağrılar Yaralanma sonrası ağrı Ameliyat ağrıları Romatoid artrit, osteoartrit, gut gibi romatizmal eklem iltihaplarının Grip veya soğuk algınlığı belirtilerinin tedavisinde kullanılır.", prKullanim: "Normal günlük doz, bölünmüş dozlar halinde (sabah-öğlen-akşam) 1200-1800 mg’dır. Hastalığın şiddetine göre günlük doz miktarı 2400 mg’a kadar artırılabilir. Bir defada 2 tablet bir arada alınabilir.", prEtki: "Döküntü veya kaşıntı Ödem Baş ağrısı, baş dönmesi Bulantı ve kusma Mide veya karın ağrısı Mide yanması, hazımsızlık veya şişkinlik İshal veya kabızlık Asabiyet Yorgunluk")
        productArray.append(nurofen)
        let  imex = MediceneProducts(prName: "Imex", prDetails: "İmex sivilce kremi cilt üzerine sürülen bir çeşit antibiyotiktir. İçerikleri sayesinde kolaylıkla sivilceleri kısa bir süre içerisinde cildinizden uzaklaştırmayı hedefler. İmex sivilce kremi ne işe yarar sorusunu soran kullanıcılar için ise verilebilecek en etkili cevap budur. Düzenli bir şekilde kullanıldığında ciltte mükemmel bir değişim sağlayan İmex etkileri ile de birçok kişi tarafından olumlu tepkiler almaktadır. ",prHastalık: "İmex genel itibatı ile acne ve sivilce türevlerinde kullanılan bir kremdir", prKullanim: "İmex sivilce kremi nasıl kullanılır sorusu da kişiler tarafından oldukça merak edilen bir başka konudur. Krem cilde uygulanmadan önce cilt bol su ile temizlenmelidir. Makyaj malzemesi kullanan kişiler de ciltlerinde hiçbir makyaj malzemesi kalmamasına dikkat etmelidir. Krem gün içerisinde 1 – 3 defa kullanılmalıdır.", prEtki: "Ciltte yanma hissi Kaşıntı Acı Ciltte kızarıklık ve şişlik Saç diplerinde kepeklenme, kuruluk ve yağlanma")
        productArray.append(imex)
        let  fastjel = MediceneProducts(prName: "Fastjel", prDetails: "FASTJEL, steroid olmayan antiinflamatuvar (iltihap önleyici) ilaçlar kategorisine dahildir. Cilt üzerine (topikal) kullanım için jel formundadır.",prHastalık: "Burkulma, incinme, ezilme, küçük eklemlerdeki artrozlar (küçük eklemlerde doku yıkımı yapan kronik eklem hastalığı), hafif şiddetteki eklem iltihapları (artritler), yüzeyel tendon iltihapları (tendinitler), şiddetli bel ağrısı (lombalji), spor yaralanmaları gibi travmatik veya romatizmal kaynaklı kas ve iskelet sisteminde ağrı ve ödeme neden olan durumların belirtilerinin tedavisinde, skleroterapi (varislerin tedavi edilmesi için kullanılan bir yöntem) sonrasındaki damar iltihaplarının tedavisinde kullanılır.", prKullanim: "Ağrılı bölgedeki cilt üzerine ince bir tabaka halinde ve emilimine yardım etmek için hafifçe sürünüz.Günde 1-3 kez kullanınız.", prEtki: "Büllöz ya da ciltte yayılan ya da yaygın olabilen fliktenül egzama (içi su dolu kabarcıklarla seyreden bir çeşit deri lezyonu(yara)) gibi daha ciddi reaksiyon vakaları seyrek olarak görülmüştür.")
        productArray.append(fastjel)
        let  vermidon = MediceneProducts(prName: "Vermidon", prDetails: "VERMİDON, her tabletinde 500 mg parasetamol ve 30 mg kafein içeren, ağrı kesici ve ateş düşürücü olarak etki gösteren bir ilaçtır.VERMİDON, 20 veya 30 tablet halinde kullanıma sunulmuştur.",prHastalık: "VERMİDON, hafif ve orta şiddetli ağrılar (baş ağrısı, migren, ağrılı adet görme, boğaz ağrısı, kas-iskelet ağrıları, kireçlenmeye bağlı ağrılar) ve ateşin giderilmesinde kullanılır.", prKullanim: "VERMİDON yetişkinlerde ve 12 yaşın üzerindeki çocuklarda uygundur. Önerilen doz 2 tablettir ve gerekirse doz her 4 saatte bir yinelenebilir. Ancak 24 saatte 4 dozdan fazla kullanılmamalıdır.Belirtilen dozdan fazla kullanılmamalı, kullanıldığı takdirde hemen bir doktora başvurulmalıdır.", prEtki: "Kafeinin günlük 520 mg’a kadar kullanımının sağlıklı kişilerde herhangi bir istenmeyen etkiye yol açmadığı tespit edilmiştir. Ancak kafeine hassas veya kafein kullanmayan kişilerde yüksek dozlarda kullanımı bazı istenmeyen etkilere yol açabilir. Bunlar: titreme, aşırı tepki verme, uykusuzluk, sinirlilik, endişe, baş ağrısı, kulak çınlaması, kalp atım bozukluğu,idrarda artış, mide-kalınbağırsak rahatsızlıkları ve hızlı solunumdur.")
        productArray.append(vermidon)
        let  pastil = MediceneProducts(prName: "Pastil", prDetails: "Pastil ses kısıklığı, boğaz ağrısı ve hafif öksürük şikayeti olan kişilerin kısa sürede rahatlatması ve şekere benzemesi nedeniyle en sempatik ilaçlar arasında sayılır. Bu nedenle kış aylarında çantalarda ve ofis çekmecelerinde hazır bulundurulur. Pastilin hastalık belirtileri kendini gösterdiği zaman alınması tavsiye edilir.",prHastalık: "Pastilin hastalık belirtileri kendini gösterdiği zaman alınması tavsiye edilir.Zaman kaybetmeden pastil kullanılırsa belirtiler yoğunlaşmadan hastalığın önüne geçebilir. Hastalık süreci çoktan başlamışsa da kullanılabilir. Bu durumda sürecin daha rahat geçirilmesine yardımcı olur. ", prKullanim: "Hamileler ve emziren annelerin çoğunun ilacı kullanamadığı bilinir. Özellikle emziren annelerin bebekleri 3 aylıktan küçük ise daha fazla dikkat edilmesi gerekir. Bu durumda, içinde hafif de olsa ağrı kesici ilaçlar barındıran pastiller olduğu için, emzirirken pastil kullanılır mı sorusu akıllara gelir. Uzmanlara göre, emziren anneler pastil kullanabilir. Böylece soğuk algınlığı belirtilerini henüz başlamadan yok eden pastil, ilacı da annelerin ihtiyacı olmaktan çıkarır.", prEtki: "Pastil dışarıdan bakıldığında şekere benzer ve hızla ferahlık sağlar. Fakat bu, pastilin bir ilaç olduğunu unutturmamalıdır. Yan etkileri açısından hafif bir ilaç olsa da kullanılması gereken dozlar aşıldığında sağlığa zarar verebilir. Bu nedenle pastil zararlı mı sorusunun cevabı, ne kadar pastil kullanımından bahsettiğimize göre değişir.")
        productArray.append(pastil)
        let  gripin = MediceneProducts(prName: "Gripin", prDetails: "GRİPİN, her kapsülünde 250 mg parasetamol ve 15 mg kafein içeren, ağrı kesici ve ateş düşürücü olarak etki gösteren bir ilaçtır.GRİPİN’in, 4 ve 8 adet kapsül içeren iki farklı ambalajı mevcuttur.",prHastalık: "GRİPİN, hafif ve orta şiddetli ağrılar (baş ağrısı, migren, ağrılı adet görme, boğaz ağrısı, kas- iskelet ağrıları, kireçlenmeye bağlı ağrılar) ve ateşin giderilmesinde kullanılır.", prKullanim: "GRİPİN yetişkinlerde ve 12 yaşın üzerindeki çocuklarda uygundur. Önerilen doz 4-6 saat ara ile 2 kapsül veya günde 3-4 kez 2-4 kapsül kullanılır. Ancak 24 saatte 4 dozdan (8 kapsül) fazla kullanılmamalıdır.Belirtilen dozdan fazla kullanılmamalı, kullanıldığı takdirde hemen bir doktora başvurulmalıdır.", prEtki: "etki görülmesi muhtemeldir.Kafeinin günlük 520 mg’a kadar kullanımının sağlıklı kişilerde herhangi bir istenmeyen etkiye yol açmadığı tespit edilmiştir. Ancak kafeine hassas veya kafein kullanmayan kişilerde yüksek dozlarda kullanımı bazı istenmeyen etkilere yol açabilir. Bunlar: titreme, aşırı tepki verme, uykusuzluk, sinirlilik, endişe, baş ağrısı, kulak çınlaması, kalp atım bozukluğu, idrarda artış, mide-kalınbağırsak rahatsızlıkları ve hızlı solunumdur.")
        productArray.append(gripin)
        let  ecopirin = MediceneProducts(prName: "Ecopirin", prDetails: "Ecopirin enterik kaplı tabletlerin her biri 100 mg asetilsalisilik asit adlı etkin madde içerir. Asetilsalisilik asit, trombosit olarak adlandırılan pıhtılaşma hücrelerinin kümeleşmesini önleyerek etkisini gösterir. Bu özelliği nedeniyle çeşitli kalp hastalıklarında kullanılır.",prHastalık: "Ecopirin, hareketle ilişkisi olmayan göğüs ağrısındaBirden fazla risk faktörü taşıyan hastaların kalp damarlarının tıkanmasının önlenmesindeYeni kalp krizinin önlenmesindeKalp ve damar ameliyatları sonrası damar tıkanmaları ve pıhtıların önlenmesinde Geçici felçlerin ve inmelerin önlenmesinde.", prKullanim: "Doktorunuz bu ilacı nasıl reçete ettiyse o şekilde kullanmanız gerekmektedir. Tedavi süresince mutlaka doktorunuzun direktiflerine uyunuz. Yanlış kullanım ve talimat dışı uygulamalar hastalığın seyrini olumsuz etkiler, sağlığınıza zarar verir.İlacın her dozunu bir bardak dolusu su ile veya süt ile birlikte alınız. Midede oluşturabileceği tahrişi azaltmak amacıyla tok karnına alınız.", prEtki: "Karın ağrısı, nefes almada güçlük, kurdeşen, yüzde, dudaklarda, dilde ve boğazda şişlik gibi bir durumda acilen doktorunuza başvurunuz.Mide bulantısı, kusma, mide yanması, karın ağrısı ve ishal yaygın görülen yan etkilerdir.")
        productArray.append(ecopirin)
       
        
        tblMediceneProducts.dataSource = self
        tblMediceneProducts.delegate = self
        searchBar.delegate = self
        filteredData = productArray
        
    }
    
    //tablo method ları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "productstable")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "productstable")
        }
        cell?.textLabel?.text = filteredData[indexPath.row].productName
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showdetail", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailVC {
            destination.product = filteredData[(tblMediceneProducts.indexPathForSelectedRow?.row)!]
            tblMediceneProducts.deselectRow(at: tblMediceneProducts.indexPathForSelectedRow!, animated: true)
        }
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? productArray : productArray.filter {
            (item: MediceneProducts) -> Bool in
            return item.productName?.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
            
        }
        tblMediceneProducts.reloadData()
        
    }
    
}

