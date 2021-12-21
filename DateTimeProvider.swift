protocol DateTimeProvider {
   var now: Date { get }
}

struct SystemDateTimeProvider: DateTimeProvider {
   var now: Date {
       return Date()
   }
}

class DateTime {
   static var provider: DateTimeProvider = SystemDateTimeProvider()
   
   static var now: Date {
       return provider.now
   }
}
