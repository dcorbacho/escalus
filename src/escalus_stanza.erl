%%==============================================================================
%% Copyright 2010 Erlang Solutions Ltd.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%% http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%==============================================================================

-module(escalus_stanza).

-export([chat_to/2]).

-include("include/escalus.hrl").
-include_lib("exmpp/include/exmpp.hrl").

chat_to(#client{jid=Jid}, Msg) ->
    Chat = exmpp_message:chat(Msg),
    exmpp_stanza:set_recipient(Chat, Jid).
