import { NativeModules } from 'react-native';

const { Calculator } = NativeModules;

export default {
  add: (a: number, b: number) => {
    return Calculator.add(a, b);
  }
};
