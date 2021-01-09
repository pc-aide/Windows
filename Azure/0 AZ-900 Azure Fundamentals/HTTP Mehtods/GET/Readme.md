# GET

## Doc
* [Virtual Machines - List All](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachines/listall)
* [Virtual Machine Sizes - List](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachinesizes/list)
* [Virtual Machine Images - List](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages/list)

## API
````api
GET https://management.azure.com/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/vmSizes?api-version=2019-12-01
````

## Populars
* Test
  * standard_d2_v3

### O/P
````json
{
  "value": [
    {
      "name": "Standard_B1ls",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096,
      "memoryInMB": 512,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_B1ms",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096,
      "memoryInMB": 2048,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_B1s",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096,
      "memoryInMB": 1024,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_B2ms",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_B2s",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 8192,
      "memoryInMB": 4096,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_B4ms",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_B8ms",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_B12ms",
      "numberOfCores": 12,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 98304,
      "memoryInMB": 49152,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_B16ms",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_B20ms",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 163840,
      "memoryInMB": 81920,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D1_v2",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 51200,
      "memoryInMB": 3584,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D2_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D3_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D4_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 28672,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D5_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 57344,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_D11_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 14336,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D12_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D13_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D14_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_D2_v2_Promo",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D3_v2_Promo",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D4_v2_Promo",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 28672,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D5_v2_Promo",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 57344,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_D11_v2_Promo",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 14336,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D12_v2_Promo",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D13_v2_Promo",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D14_v2_Promo",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_F1",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384,
      "memoryInMB": 2048,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_F2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 4096,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_F4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 8192,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_F8",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 16384,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F16",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 32768,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS1_v2",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 7168,
      "memoryInMB": 3584,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_DS2_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 14336,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DS3_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 28672,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS4_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS5_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS11-1_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 28672,
      "memoryInMB": 14336,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DS11_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 28672,
      "memoryInMB": 14336,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DS12-1_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS12-2_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS12_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS13-2_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS13-4_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS13_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS14-4_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 229376,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS14-8_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 229376,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS14_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 229376,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS2_v2_Promo",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 14336,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DS3_v2_Promo",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 28672,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS4_v2_Promo",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS5_v2_Promo",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_DS11_v2_Promo",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 28672,
      "memoryInMB": 14336,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DS12_v2_Promo",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_DS13_v2_Promo",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS14_v2_Promo",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 229376,
      "memoryInMB": 114688,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_F1s",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096,
      "memoryInMB": 2048,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_F2s",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 8192,
      "memoryInMB": 4096,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_F4s",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384,
      "memoryInMB": 8192,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_F8s",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 16384,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F16s",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 32768,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_A1_v2",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 10240,
      "memoryInMB": 2048,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_A2m_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 20480,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_A2_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 20480,
      "memoryInMB": 4096,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_A4m_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 40960,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_A4_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 40960,
      "memoryInMB": 8192,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_A8m_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 81920,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_A8_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 81920,
      "memoryInMB": 16384,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D2_v3",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 51200,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4_v3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48_v3",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1638400,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D2s_v3",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4s_v3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8s_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16s_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32s_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48s_v3",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 393216,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64s_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 524288,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E2_v3",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 51200,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4_v3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20_v3",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 512000,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 819200,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E48_v3",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64i_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1638400,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1638400,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E2s_v3",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4-2s_v3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E4s_v3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8-2s_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8-4s_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8s_v3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16-4s_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16-8s_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16s_v3",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20s_v3",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 327680,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-8s_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 524288,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-16s_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 524288,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32s_v3",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 524288,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E48s_v3",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 786432,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-16s_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 884736,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-32s_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 884736,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64is_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 884736,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64s_v3",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 884736,
      "memoryInMB": 442368,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DS15_v2",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 286720,
      "memoryInMB": 143360,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_E2_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20_v4",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E2d_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 76800,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4d_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 153600,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8d_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16d_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20d_v4",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 768000,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32d_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E2s_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4-2s_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E4s_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8-2s_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8-4s_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8s_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16-4s_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16-8s_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16s_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20s_v4",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-8s_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-16s_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32s_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E2ds_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 76800,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_E4-2ds_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 153600,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E4ds_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 153600,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_E8-2ds_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8-4ds_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E8ds_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 65536,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E16-4ds_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16-8ds_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E16ds_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E20ds_v4",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 768000,
      "memoryInMB": 163840,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-8ds_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32-16ds_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E32ds_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D2d_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 76800,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4d_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 153600,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8d_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16d_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32d_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48d_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1843200,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64d_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D2_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D2ds_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 76800,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4ds_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 153600,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8ds_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 307200,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16ds_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 614400,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32ds_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1228800,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48ds_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1843200,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64ds_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D2s_v4",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 8192,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_D4s_v4",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 16384,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_D8s_v4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_D16s_v4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D32s_v4",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D48s_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D64s_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_D15_v2",
      "numberOfCores": 20,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 143360,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_F2s_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384,
      "memoryInMB": 4096,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_F4s_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 32768,
      "memoryInMB": 8192,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_F8s_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 65536,
      "memoryInMB": 16384,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_F16s_v2",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 131072,
      "memoryInMB": 32768,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F32s_v2",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 262144,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F48s_v2",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 393216,
      "memoryInMB": 98304,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F64s_v2",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 524288,
      "memoryInMB": 131072,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_F72s_v2",
      "numberOfCores": 72,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 589824,
      "memoryInMB": 147456,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_DC8_v2",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 409600,
      "memoryInMB": 32768,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_DC1s_v2",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 51200,
      "memoryInMB": 4096,
      "maxDataDiskCount": 1
    },
    {
      "name": "Standard_DC2s_v2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 102400,
      "memoryInMB": 8192,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_DC4s_v2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 204800,
      "memoryInMB": 16384,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_A0",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 20480,
      "memoryInMB": 768,
      "maxDataDiskCount": 1
    },
    {
      "name": "Standard_A1",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 71680,
      "memoryInMB": 1792,
      "maxDataDiskCount": 2
    },
    {
      "name": "Standard_A2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 138240,
      "memoryInMB": 3584,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_A3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 291840,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_A5",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 138240,
      "memoryInMB": 14336,
      "maxDataDiskCount": 4
    },
    {
      "name": "Standard_A4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 619520,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_A6",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 291840,
      "memoryInMB": 28672,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_A7",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 619520,
      "memoryInMB": 57344,
      "maxDataDiskCount": 16
    },
    {
      "name": "Basic_A0",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 20480,
      "memoryInMB": 768,
      "maxDataDiskCount": 1
    },
    {
      "name": "Basic_A1",
      "numberOfCores": 1,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 40960,
      "memoryInMB": 1792,
      "maxDataDiskCount": 2
    },
    {
      "name": "Basic_A2",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 61440,
      "memoryInMB": 3584,
      "maxDataDiskCount": 4
    },
    {
      "name": "Basic_A3",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 122880,
      "memoryInMB": 7168,
      "maxDataDiskCount": 8
    },
    {
      "name": "Basic_A4",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 245760,
      "memoryInMB": 14336,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_E48_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E48d_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1843200,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64d_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E48s_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-16s_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-32s_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64s_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 0,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E48ds_v4",
      "numberOfCores": 48,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1843200,
      "memoryInMB": 393216,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-16ds_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64-32ds_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_E64ds_v4",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2457600,
      "memoryInMB": 516096,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_G1",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 393216,
      "memoryInMB": 28672,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_G2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 786432,
      "memoryInMB": 57344,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_G3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1572864,
      "memoryInMB": 114688,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_G4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 3145728,
      "memoryInMB": 229376,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_G5",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 6291456,
      "memoryInMB": 458752,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS1",
      "numberOfCores": 2,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 57344,
      "memoryInMB": 28672,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_GS2",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 114688,
      "memoryInMB": 57344,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_GS3",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 229376,
      "memoryInMB": 114688,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_GS4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 458752,
      "memoryInMB": 229376,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS4-4",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 458752,
      "memoryInMB": 229376,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS4-8",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 458752,
      "memoryInMB": 229376,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS5",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 917504,
      "memoryInMB": 458752,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS5-8",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 917504,
      "memoryInMB": 458752,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_GS5-16",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 917504,
      "memoryInMB": 458752,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_L4s",
      "numberOfCores": 4,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 694272,
      "memoryInMB": 32768,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_L8s",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1421312,
      "memoryInMB": 65536,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_L16s",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2874368,
      "memoryInMB": 131072,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_L32s",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 5765120,
      "memoryInMB": 262144,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_NC6s_v3",
      "numberOfCores": 6,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 344064,
      "memoryInMB": 114688,
      "maxDataDiskCount": 12
    },
    {
      "name": "Standard_NC12s_v3",
      "numberOfCores": 12,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 688128,
      "memoryInMB": 229376,
      "maxDataDiskCount": 24
    },
    {
      "name": "Standard_NC24rs_v3",
      "numberOfCores": 24,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1376256,
      "memoryInMB": 458752,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_NC24s_v3",
      "numberOfCores": 24,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1376256,
      "memoryInMB": 458752,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M8-2ms",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 256000,
      "memoryInMB": 224000,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_M8-4ms",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 256000,
      "memoryInMB": 224000,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_M8ms",
      "numberOfCores": 8,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 256000,
      "memoryInMB": 224000,
      "maxDataDiskCount": 8
    },
    {
      "name": "Standard_M16-4ms",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 512000,
      "memoryInMB": 448000,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_M16-8ms",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 512000,
      "memoryInMB": 448000,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_M16ms",
      "numberOfCores": 16,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 512000,
      "memoryInMB": 448000,
      "maxDataDiskCount": 16
    },
    {
      "name": "Standard_M32-8ms",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 896000,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M32-16ms",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 896000,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M32ls",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 262144,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M32ms",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 896000,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M32ts",
      "numberOfCores": 32,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 1024000,
      "memoryInMB": 196608,
      "maxDataDiskCount": 32
    },
    {
      "name": "Standard_M64-16ms",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2048000,
      "memoryInMB": 1792000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64-32ms",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2048000,
      "memoryInMB": 1792000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64ls",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2048000,
      "memoryInMB": 524288,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64ms",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2048000,
      "memoryInMB": 1792000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64s",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 2048000,
      "memoryInMB": 1024000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128-32ms",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096000,
      "memoryInMB": 3891200,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128-64ms",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096000,
      "memoryInMB": 3891200,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128ms",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096000,
      "memoryInMB": 3891200,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128s",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 4096000,
      "memoryInMB": 2048000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 8192000,
      "memoryInMB": 1024000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M64m",
      "numberOfCores": 64,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 8192000,
      "memoryInMB": 1792000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384000,
      "memoryInMB": 2048000,
      "maxDataDiskCount": 64
    },
    {
      "name": "Standard_M128m",
      "numberOfCores": 128,
      "osDiskSizeInMB": 1047552,
      "resourceDiskSizeInMB": 16384000,
      "memoryInMB": 3891200,
      "maxDataDiskCount": 64
    }
  ]
}
````
