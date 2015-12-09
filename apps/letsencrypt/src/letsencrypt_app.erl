%%%-------------------------------------------------------------------
%% @doc letsencrypt public API
%% @end
%%%-------------------------------------------------------------------

-module('letsencrypt_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'letsencrypt_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================