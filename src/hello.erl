%%%-------------------------------------------------------------------
%%% @author ztt
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. 七月 2018 上午12:57
%%%-------------------------------------------------------------------
-module(hello).
-author("ztt").

%% API
-export([ encode/0]).

-include("test.hrl").
-include("exercise_define.hrl").

%%使用protobuff产生的.erl文件解析加密协议
encode()->
%%    使用宏
    ?DEBUG("hello"),

    Person = #{age=>25, name=>"John"},

    Binary = test_pb:encode_msg(Person,'Person'),

    Map = test_pb:decode_msg(Binary,'Person')
.
