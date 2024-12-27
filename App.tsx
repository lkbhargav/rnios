/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  Button,
  StyleSheet,
  Text,
  View,
} from 'react-native';

import Calculator from "./src/NativeCalculator";

function App(): React.JSX.Element {
  const [result, setResult] = React.useState(null);

  const handleAdd = async () => {
		try {
			const sum = await Calculator.add(5, 3);
			setResult(sum);
		} catch (error) {
			console.error(error);
		}
	};

  return (
      <View style={styles.container}>
				<Button title="Add 5 + 3" onPress={handleAdd} />
				{result !== null && <Text>Result: {result}</Text>}
			</View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
});

export default App;
