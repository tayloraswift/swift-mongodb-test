import BSON
import MongoDB

extension Mongo.Session
{
    func setup() async throws
    {
        try await self.run(
            command: Mongo.Modify<Mongo.Collection>.init("Test")
            {
                $0[.cappedSize] = 1
                $0[.cappedMax] = 1
            },
            against: "test")
    }
}
