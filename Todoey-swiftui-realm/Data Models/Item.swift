import RealmSwift

class Item: Object, Identifiable{
    @Persisted var title: String = ""
    @Persisted var done: Bool = false
}

//struct Item {
//    var title: String = ""
//    var done: Bool = false
//}
