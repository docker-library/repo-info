## `mongo:8-windowsservercore`

```console
$ docker pull mongo@sha256:c4ee98c4fe8e58e5da23793f24ab6a1b805a1c1491bcc785413bcebf9dc8b4af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:9b882b1067106e903a1f974a360600f66967b358336064c191ee8bff23edf90b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3173623399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad0826669f372046f3570b370ee29d99748f21e6576a5dab5c4607873243847`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=8.2.12
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.2.12-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=f326e306c821fc650ab6a3e4f70a3ff3deda0796562a68f5231539b07c55d253
# Wed, 22 Jul 2026 22:21:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:52 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:53 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:53 GMT
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
	-	`sha256:2242e354a8c3f7cd51613881a4d3bb7521275b188220fc1e71d7b5091d7754ac`  
		Last Modified: Wed, 22 Jul 2026 22:21:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b945a39906fded8e025a7ea9ad243f986b53ba5b5236dbd69fd9c3ae25999f7f`  
		Last Modified: Wed, 22 Jul 2026 22:21:59 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4672a92223444c3997111f5588f7b7c729617cb8a63b9cf31d0ee4e1b62c54b0`  
		Last Modified: Wed, 22 Jul 2026 22:21:59 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941c2fe99e1eec99c197fa93af0deb415ce15b326fc94678193f863f8329e375`  
		Last Modified: Wed, 22 Jul 2026 22:21:58 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9eb8a75e3ecc895dc9d50e7be3be7aa0613543b262ab6b6edc99cda29a33e`  
		Last Modified: Wed, 22 Jul 2026 22:23:05 GMT  
		Size: 818.6 MB (818606224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203c880e459d4bb4f706e109b1d8d34d814c19021800dd3d7b3d00c4beec05c4`  
		Last Modified: Wed, 22 Jul 2026 22:21:58 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b5fde4f4ec0f4034e4ff87d3c0d658bac6560b9a4d5b378f1696f2928bbe5`  
		Last Modified: Wed, 22 Jul 2026 22:21:58 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613e8c0448f9a10742075f382dd6d5393e67e7919c7b02023cd6bce5e657a990`  
		Last Modified: Wed, 22 Jul 2026 22:21:58 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:03a5d7625e831aa1c615ace53ca8787b7e0419d1c0ff0db469099693b7fc93b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2976207384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9218f02b739bdd51dfa7bdbfaf573a62c5607c027f268cb6c2c3f9be774fe8e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:57 GMT
ENV MONGO_VERSION=8.2.12
# Wed, 22 Jul 2026 22:18:59 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.2.12-signed.msi
# Wed, 22 Jul 2026 22:19:00 GMT
ENV MONGO_DOWNLOAD_SHA256=f326e306c821fc650ab6a3e4f70a3ff3deda0796562a68f5231539b07c55d253
# Wed, 22 Jul 2026 22:21:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:58 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:59 GMT
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
	-	`sha256:aedfdb81f703f244db4c832c5268b2f34b966f11add015879fb20a524a44a26e`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129ad3a7cfc5ef588cb0319742b7b16c118ec152bcde19ac5f51cb6543f81d1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d9bd5e6d1e688ea099f7f0ab00a18774b37425b052cd1728a9fdc36e53f733`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f778f760be1eaac6c8eab4ab5c5367a40a427b3904a9ecbcf0069120462952`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ee7f0ecab1dcb4b2315dfd2d65a8a4065c1da1421f51b3103ff5f4f829973c`  
		Last Modified: Wed, 22 Jul 2026 22:23:23 GMT  
		Size: 818.6 MB (818645099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7be0b1afe6ad341ca20cc30b73686de6425ea65bdded26f4b60801a9daf9ff`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d53e77afe99d1cbf711527bd837dba82480d92e04117d306395662213ec313`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d95a150b00d2dae85e3e7eb2ba93accd5ae6bda06ff0d545202753d9b98ae9`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
