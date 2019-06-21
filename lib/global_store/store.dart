import 'package:fish_redux/fish_redux.dart';
import 'reducer.dart';
import 'state.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
      _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}


//redux-persist的 middleware
//
//final persistor = Persistor<PageState>(
//  storage: FlutterStorage(),
//  serializer: JsonSerializer<PageState>(PageState.fromJson),
//);
//
//Middleware<PageState> persistMiddleware = (
//    {Dispatch dispatch, Get<PageState> getState}) {
//  return (Dispatch next) {
//    return (Action action) {
//      next(action);
//      if (action is PersistAction) {
//        print('PersistState: ${action.type} ${action.payload}');
//        persistor.save(getState());
//      }
//    };
//  };
//};
//
//var initialState;
//try {
//initialState = await persistor.load();
//} on SerializationException {
//// 第一次加载程序时，还没有任何数据，加载数据会失败
//// 此时使用初始化数据
//initialState = PageState();
//}