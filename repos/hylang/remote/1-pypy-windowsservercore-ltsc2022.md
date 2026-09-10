## `hylang:1-pypy-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:645a78c9c4ef850ec0ff1e063cb73044bd3862731d4abf02656987371db9fec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `hylang:1-pypy-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:3a1507e848b297410b106d78440fd09978d50d19d87d0c5de77a30b596e25fca
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2274158557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40e554885b51e856334e68d1b6c1e4eaf37f4c3ea2b4b172b838cd2e22c955`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:54 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:03 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:04 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 09 Sep 2026 22:50:46 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:50:47 GMT
CMD ["pypy"]
# Wed, 09 Sep 2026 23:27:30 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:27:31 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:28:16 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:28:17 GMT
CMD ["hy"]
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
	-	`sha256:9c2b454245496d177f49bf752d1b43585fa7e5486969ff0620b6d71bd6f0a77e`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e502c157afec0352814b704ba59106d9af10ae1eeb2f60006e13e7092fd8d64`  
		Last Modified: Wed, 09 Sep 2026 22:50:53 GMT  
		Size: 341.1 KB (341050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d8ad21587b89d70173399dab43a4dff759374f7e4c99ad0e05273bc737d9bb`  
		Last Modified: Wed, 09 Sep 2026 22:50:56 GMT  
		Size: 15.5 MB (15516826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f0519eadb27ca28c314bc175d208c60fb31bcf96f96d098db20ad5ad7b0cf1`  
		Last Modified: Wed, 09 Sep 2026 22:50:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7f19639285ebbdb85f2075c16f4a8b867e4e07bf781ead1d190b4f27bde05b`  
		Last Modified: Wed, 09 Sep 2026 22:50:57 GMT  
		Size: 30.9 MB (30861307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722742fadd9fcbf46bb5799da784fcfacb7fcbf7d9ae09554e2bd8032d2d95a9`  
		Last Modified: Wed, 09 Sep 2026 22:50:53 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3cb7a0d9531ad172d48de6a86eff5b8a8d445016599d9fb56efe2565f15525`  
		Last Modified: Wed, 09 Sep 2026 23:28:21 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082ae5de4a36df20e9071f9d499a34af093d5a72d71c53feb4ac5d7b9fb467e4`  
		Last Modified: Wed, 09 Sep 2026 23:28:21 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51612459adfca95d899c98508eaa930554d998b30cfcf046034c1e543e8f11e8`  
		Last Modified: Wed, 09 Sep 2026 23:28:22 GMT  
		Size: 7.9 MB (7942694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68dffd40cbd8cc8dbf32d62955c5e23d7c746ebd19c53cd2bcc6d9a8b7601699`  
		Last Modified: Wed, 09 Sep 2026 23:28:21 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
