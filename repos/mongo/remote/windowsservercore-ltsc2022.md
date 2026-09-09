## `mongo:windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:06fc868e8e706910458077d6c2b02411b5a45097637509d2a3c5ade22f0e38de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:81dae02b1fd73a337b266244fa94211e66b1a3473bde95bb2ecf5e893f0123ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3107316883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6f7d556ba775177e23fc42deda8feb71618bac7788f8594da815e45aba0243`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Tue, 08 Sep 2026 21:51:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Sep 2026 21:51:42 GMT
ENV MONGO_VERSION=8.3.9
# Tue, 08 Sep 2026 21:51:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.9-signed.msi
# Tue, 08 Sep 2026 21:51:45 GMT
ENV MONGO_DOWNLOAD_SHA256=349ac0c10d204d014c97bb2ae03de61b8955f69d6c81f01f4a91f3823663589b
# Tue, 08 Sep 2026 21:54:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Sep 2026 21:54:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Sep 2026 21:54:47 GMT
EXPOSE 27017
# Tue, 08 Sep 2026 21:54:47 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c2994ddec253facdb7d3ad4450e3f1e739554540aac849e0bc7929626021ea`  
		Last Modified: Tue, 08 Sep 2026 21:54:54 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff491e4a27d0e4046afc1c455cef8d50c4638f13a508f55e0aa831a56802e63`  
		Last Modified: Tue, 08 Sep 2026 21:54:54 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e05f1a89b50ebb942ef81134e63e8651842896f8376bba6e61b8cd906f91ef`  
		Last Modified: Tue, 08 Sep 2026 21:54:54 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4703b5f228d5cb28fbf7d91a0df1c44ce79d18ed8537824abd4ac1253d15065c`  
		Last Modified: Tue, 08 Sep 2026 21:54:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c568140db8e1d5f99ee8873a9ec3bac4cad2f1169ee73be06d579ae6d80b4`  
		Last Modified: Tue, 08 Sep 2026 21:56:09 GMT  
		Size: 923.3 MB (923310324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d48d2d0ddfc3ebaf6a68fa32f3a68a77cc87a8b7960797a6e2842736dfd09a`  
		Last Modified: Tue, 08 Sep 2026 21:54:53 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec57369ee8b0201be9fbb05cdb3345c29d793f4d95292608cd0a7acf34f4929`  
		Last Modified: Tue, 08 Sep 2026 21:54:53 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acb67aef3ca219a5bc45ed25930304971d0b7b549abcce35ea97400de4bb32c`  
		Last Modified: Tue, 08 Sep 2026 21:54:53 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
