## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:7efafb0e3182e952beec49bcb840a4425e4909dbee68f50178c9f87cb9cb0549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:bff5bc46a7cfb7553e91cd46b6aa364a8ec2e93f5c965d842448bbfd0ffa45a9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2978825034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef83358366173cece299083fc7a44b985592f6a6af6717a9d79943c54e59ce1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:15:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:15:05 GMT
ENV MONGO_VERSION=7.0.37
# Wed, 15 Jul 2026 23:15:05 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.37-signed.msi
# Wed, 15 Jul 2026 23:15:06 GMT
ENV MONGO_DOWNLOAD_SHA256=110a4774e93dd3dd253725f18bc87b77468521875d7448ca5f79fb1d5045cedc
# Wed, 15 Jul 2026 23:17:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:17:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Jul 2026 23:17:05 GMT
EXPOSE 27017
# Wed, 15 Jul 2026 23:17:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47820699bdf10a38e4b93c6e069768c2e1a4b714330108539caf1b856cced4a9`  
		Last Modified: Wed, 15 Jul 2026 23:17:15 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ad02006e0110cbf18ddb2b584532591211b8e1ad6c89c9f5a4cbbf7e6f3a0d`  
		Last Modified: Wed, 15 Jul 2026 23:17:15 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c938ff733a29f77ca44af9cb68856ce5524bd88d05839c9c7f4590624ac67a2`  
		Last Modified: Wed, 15 Jul 2026 23:17:15 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5941a41c72ffdb527edf3fbdb2ff96c477b523fe3f1a59d57446901ccc68558b`  
		Last Modified: Wed, 15 Jul 2026 23:17:13 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debc6126646be8a0c553360aac604f9d6e0bd0eef2fd492260778be91406fbe2`  
		Last Modified: Wed, 15 Jul 2026 23:18:14 GMT  
		Size: 623.8 MB (623807847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5440ce8f18be3b6125ec21386864a7bf61f7daa07ae7bc2f222a6648978eaf`  
		Last Modified: Wed, 15 Jul 2026 23:17:13 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a104b23d43737901860a55dbca47cd2d8871becf7aacbcd64f8e52495913804`  
		Last Modified: Wed, 15 Jul 2026 23:17:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00204cdac8a5f6e711df076f3b8d251fa4d06d32675a961d07bfe6a92385da42`  
		Last Modified: Wed, 15 Jul 2026 23:17:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:b9cd026a7f35b28accce418c4bfe053d6a1f22b8630dbfe8de451c8f7e651573
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2781509125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb4988a66f53ad1ad17eaca9c81bfb52c1f718fa72fbfea4ee6559d928c8c13`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:24:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:27:54 GMT
ENV MONGO_VERSION=7.0.37
# Wed, 15 Jul 2026 23:27:54 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.37-signed.msi
# Wed, 15 Jul 2026 23:27:55 GMT
ENV MONGO_DOWNLOAD_SHA256=110a4774e93dd3dd253725f18bc87b77468521875d7448ca5f79fb1d5045cedc
# Wed, 15 Jul 2026 23:29:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:29:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Jul 2026 23:29:16 GMT
EXPOSE 27017
# Wed, 15 Jul 2026 23:29:17 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd10fe4583a5940def2910e6017eaedce1c193c0c7ab637e92cd8bbb4106590a`  
		Last Modified: Wed, 15 Jul 2026 23:26:10 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91f3e2b22e21f5dec1665715835cf19bed460663d615f143d05f2a656e0d7`  
		Last Modified: Wed, 15 Jul 2026 23:29:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbbf70e385a01d5788854953fe13c02efcbe635a6f2c7ac2a4a304ad9be898c`  
		Last Modified: Wed, 15 Jul 2026 23:29:28 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4b3f5221e193217f6a055383262305e7c2c70c44a81e8ee23c941b13868424`  
		Last Modified: Wed, 15 Jul 2026 23:29:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a213718a76bea9eaf3dd7b496e50881fb6efde71a77555aa0dfca496c9dd22`  
		Last Modified: Wed, 15 Jul 2026 23:30:16 GMT  
		Size: 623.9 MB (623946833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b9adf727bcd01891dabb8e2c2813b7aea2c40171773e6b223fe45e7b8dd30c`  
		Last Modified: Wed, 15 Jul 2026 23:29:27 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b57cc80ec7795500bbb11cc9bb9648da8401532d15274bd735084bdc4543919`  
		Last Modified: Wed, 15 Jul 2026 23:29:27 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff12a13d4fb91c1665b71a0b22807a7b4070dbd2e7396f1eec8aaa85fd1c023`  
		Last Modified: Wed, 15 Jul 2026 23:29:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
