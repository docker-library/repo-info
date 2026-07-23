## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:c402d0997e6b96e734092b3f046ea28f5210778c54632e3e7c4931c550e5e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
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
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
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
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
