//
//  main.swift
//  DeepLearningOSX
//
//  Created by Martin Mumford on 3/25/15.
//  Copyright (c) 2015 Martin Mumford. All rights reserved.
//

import Foundation

let dataio = DataIO()
let netio = NetworkIO()

//let trainSet = dataio.importArffFile("MNIST_train_1000", autoencode:true, denoise:true, denoisePercent:0.05)
//let testSet = dataio.importArffFile("MNIST_test_500", autoencode:true, denoise:false, denoisePercent:0.00)
//let derpNet = netio.networkFromFile("ae_dn05_h1000_tr1000_lr025_e1")
//
//derpNet!.testOnDataset(testSet)

//let derpNet = SingleLayerBackpropNet(inputNodes:784, hiddenNodes:1000, outputNodes:784, withWeights:false, initialFirstWeights:Array2D(cols:1, rows:1), initialSecondWeights:Array2D(cols:1, rows:1))

//derpNet.trainOnDataset(trainSet, testSet:testSet, maxEpochs:1, maxInstances:0)
//
//var networkString = netio.exportWeights(derpNet, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/ae_784-1000_e1.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)
//
//derpNet.trainOnDataset(trainSet, testSet:testSet, maxEpochs:1, maxInstances:0)
//
//networkString = netio.exportWeights(derpNet, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/ae_784-1000_e2.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)
//
//derpNet.trainOnDataset(trainSet, testSet:testSet, maxEpochs:1, maxInstances:0)
//
//networkString = netio.exportWeights(derpNet, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/ae_784-1000_e3.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)

//let trainingSet = dataio.importArffFile("MNIST_train_50", autoencode:false, denoise:true, denoisePercent:0.25)

//// TRIVIAL TRAINING SETS

//let trainSet = Dataset()
//let testSet = Dataset()
//
//let downArray = [Float(1.0), Float(0.2), Float(0.1)]
//let downArray2 = [Float(0.9), Float(0.1), Float(0.0)]
//let upArray = [Float(0.0), Float(0.2), Float(1.0)]
//let upArray2 = [Float(0.0), Float(0.1), Float(0.9)]
//let midArray = [Float(0.1), Float(1.0), Float(0.2)]
//let midArray2 = [Float(0.2), Float(1.0), Float(0.1)]
//
//let midArray3 = [Float(0.25), Float(0.8), Float(0.15)]
//let downArray3 = [Float(0.8), Float(0.25), Float(0.05)]
//let upArray3 = [Float(0.05), Float(0.25), Float(0.8)]
//
//for _ in 0..<25
//{
//    let variantDown = dataio.variantArray(downArray)
//    let variantDown2 = dataio.variantArray(downArray2)
//    let variantUp = dataio.variantArray(upArray)
//    let variantUp2 = dataio.variantArray(upArray2)
//    let variantMid = dataio.variantArray(midArray)
//    let variantMid2 = dataio.variantArray(midArray2)
//    
//    trainSet.addInstance(variantDown, outputVector:variantDown)
//    trainSet.addInstance(variantUp, outputVector:variantUp)
//    trainSet.addInstance(variantMid, outputVector:variantMid)
//    trainSet.addInstance(variantDown2, outputVector:variantDown2)
//    trainSet.addInstance(variantUp2, outputVector:variantUp2)
//    trainSet.addInstance(variantMid2, outputVector:variantMid2)
//    
//    testSet.addInstance(downArray, outputVector:downArray)
//    testSet.addInstance(upArray, outputVector:upArray)
//    testSet.addInstance(midArray, outputVector:midArray)
//    testSet.addInstance(downArray2, outputVector:downArray2)
//    testSet.addInstance(upArray2, outputVector:upArray2)
//    testSet.addInstance(midArray2, outputVector:midArray2)
//    testSet.addInstance(downArray3, outputVector:downArray3)
//    testSet.addInstance(upArray3, outputVector:upArray3)
//    testSet.addInstance(midArray3, outputVector:midArray3)
//}
//
//let denoisedTrainSet = dataio.denoiseDataset(trainSet, noiseFrequency:0.05)
//
//let derpNet = SingleLayerBackpropNet(inputNodes:3, hiddenNodes:6, outputNodes:3, withWeights:false, initialFirstWeights:Array2D(cols:1,rows:1), initialSecondWeights:Array2D(cols:1,rows:1))
//
//derpNet.trainOnDataset(denoisedTrainSet, maxEpochs:10, maxInstances:0)
//derpNet.testOnDataset(testSet)



//derpNet.learningOverTime(denoisedTrainSet, epochs:100, testSet:testSet)

//let testSet = dataio.importArffFile("T1_Test_500", autoencode:false, denoise:false, denoisePercent:0.0)
//
////let inputNet = netio.halfNetworkFromFile("ae_dn25_h1000_tr1000_e1")
//let trainingNet = SingleLayerBackpropNet(inputNodes:1000, hiddenNodes:500, outputNodes:10, withWeights:false, initialFirstWeights: Array2D(cols:1, rows:1), initialSecondWeights:Array2D(cols:1, rows:1))
//
//trainingNet.trainOnDataset(trainingSet, testSet:testSet, maxEpochs:10, maxInstances:0)
//
//// Export second network weights
//let networkString = netio.exportWeights(trainingNet, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/mlp_T784_dn_25_M1000-500-10_t1000_e10.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)

//// Transform dataset
//let transformedDataset = dataio.transformData(trainingSet, network:inputNet!)
//
//// Save out the transformed dataset
//let datasetString = dataio.exportArffFile(transformedDataset)
//var directory = "\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/deep-learning/Data/T1_Train_1000.arff"
//datasetString.writeToFile(directory, atomically:false, encoding:NSUTF8StringEncoding, error:nil)


//var stackedNet = StackedNet(transformLayer:inputNet!, trainingLayer:trainingNet)
//stackedNet.trainOnDataset(trainingSet, testSet:transformedTestSet, maxEpochs:10, maxInstances:-1)
//
//let networkString = exporter.exportWeights(stackedNet.trainingLayer, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/mlp_T784_dn_25_M1000-500-10_t1000_e10.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)



////Training
//
//let trainingSet = importer.importArffFile("MNIST_train_1000", autoencode:true, denoise:true, denoisePercent:0.25)
////let testSet = importer.importArffFile("MNIST_test_500", autoencode:true, denoise:false, denoisePercent:0.0)
//
//let standardNet = SingleLayerBackpropNet(inputNodes:784, hiddenNodes:1000, outputNodes:784, withWeights:false, initialFirstWeights:Array2D(cols:1, rows:1), initialSecondWeights:Array2D(cols:1, rows:1))
//
//standardNet.trainOnDataset(trainingSet, maxEpochs:1, maxInstances:0)
//
//let networkString = exporter.exportWeights(standardNet, half:false)
//networkString.writeToFile("\(NSHomeDirectory())/Documents/Academics/CS678-NeuralNetworks/Project2-DeepLearning/SavedNets/ae_dn25_h1500_t1000_e1.txt", atomically:false, encoding:NSUTF8StringEncoding, error:nil)

println("derp")