opt server_output = "../build/server_net.luau"
opt client_output = "../build/client_net.luau"

event Dungeon = {
    from: Client,
    type: Reliable,
    call: ManyAsync,
    data: (foo: boolean)
}