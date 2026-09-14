## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:7773b13c4caac26dd291cce5a5a7b835dec0ccd8e760e14c77a5f9ae6a7005c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `mongo:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull mongo@sha256:1916d6a2fa0dcd9e9b3525a53bcb7c9051fa68377e7404802d32b409f1951c40
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3380638628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20ca6b7f64edca1b8d2ef696f495c4f69f429fcab235e929de0b456605ea97b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 14 Sep 2026 18:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Sep 2026 18:41:04 GMT
ENV MONGO_VERSION=8.3.11
# Mon, 14 Sep 2026 18:41:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.11-signed.msi
# Mon, 14 Sep 2026 18:41:07 GMT
ENV MONGO_DOWNLOAD_SHA256=5d00b5acbcc531374a1ca935fefd70491ac6ed8f8dd041a00cf540d782b1378d
# Mon, 14 Sep 2026 18:44:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Sep 2026 18:44:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Sep 2026 18:44:36 GMT
EXPOSE 27017
# Mon, 14 Sep 2026 18:44:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7b823638e0a098395d8b6d0e11786eb1879674a760ff291f8f1286907bc36b`  
		Last Modified: Mon, 14 Sep 2026 18:44:51 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306f2e01e3e4c218407639a1a302e92edbc06ca29b9b16797c2cd0443ff676d1`  
		Last Modified: Mon, 14 Sep 2026 18:44:51 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744881cebef187b1fbbe13d686b0a74927f2826273ffbed4dbec73410ab79492`  
		Last Modified: Mon, 14 Sep 2026 18:44:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c24c5c3ef85fb133afdd0c489748331c1ba08a0cc65691304d8161a02b3069`  
		Last Modified: Mon, 14 Sep 2026 18:44:49 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2a87958a6a56f2c0a83ecfc8b7754f5283db39af5581dd1c5fd50d32bcbe5e`  
		Last Modified: Mon, 14 Sep 2026 18:46:04 GMT  
		Size: 923.0 MB (922999974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb47bc361db7497ed345bfc05ce22b7342967d5fd3b3f7ce522ac49c8925e9c`  
		Last Modified: Mon, 14 Sep 2026 18:44:49 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0405b462f8897897be2b3d1cb1f3b8eb8153c3608c361a196c7e52c1bc7c93`  
		Last Modified: Mon, 14 Sep 2026 18:44:49 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacab14f56023118495c70b2cf09aa352631a3dbcba8e54d70ecefc3ed31729e`  
		Last Modified: Mon, 14 Sep 2026 18:44:49 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull mongo@sha256:0d79351d043d5f54442c1e019a5fdcaeb7a73c44eac0c151f327766a668e6195
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3142484113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bc339afa971bbfecf0f666885ccd6dd366fe89f9136564dfaacf5a801a4d3e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 14 Sep 2026 18:41:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Sep 2026 18:41:30 GMT
ENV MONGO_VERSION=8.3.11
# Mon, 14 Sep 2026 18:41:32 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.11-signed.msi
# Mon, 14 Sep 2026 18:41:34 GMT
ENV MONGO_DOWNLOAD_SHA256=5d00b5acbcc531374a1ca935fefd70491ac6ed8f8dd041a00cf540d782b1378d
# Mon, 14 Sep 2026 18:50:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Sep 2026 18:50:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Sep 2026 18:50:05 GMT
EXPOSE 27017
# Mon, 14 Sep 2026 18:50:06 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3175294427092d5342a3e758b124f6fb3b51970b37daeeb8be7e92161f81b77`  
		Last Modified: Mon, 14 Sep 2026 18:50:24 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee362485829ae7826e7c6ced737a011506c007d01acacf6b1a7ca759f928b2c6`  
		Last Modified: Mon, 14 Sep 2026 18:50:24 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce31a486d52a1e6e3ab9774e33d753d2b2dcfcbe29cd2d637cb3abda22a450a`  
		Last Modified: Mon, 14 Sep 2026 18:50:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f353b8e39484d189945c6af1244cb67cefb52967e5b68663fa2928bd498c8b9`  
		Last Modified: Mon, 14 Sep 2026 18:50:23 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967103babfe0d388622f31f3a6b9ce86a9a637ec8147e7a906d0d51833875769`  
		Last Modified: Mon, 14 Sep 2026 18:51:30 GMT  
		Size: 923.0 MB (922986264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522995bb44129667ba42f46a5652778ea10532866a831b2ea43e77c61757d5cb`  
		Last Modified: Mon, 14 Sep 2026 18:50:23 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1aac2c7b16ca34ef6aac1be65cd11dbb25834c792475d231dc4feddfe3747e`  
		Last Modified: Mon, 14 Sep 2026 18:50:23 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4617ca3f926c9a76fec95ce2e8ea01beb3b3ae319503536efb940f1f8ef423`  
		Last Modified: Mon, 14 Sep 2026 18:50:23 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
