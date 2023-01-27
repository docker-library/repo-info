## `hylang:pypy-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:5968f4f77654c6b122261e9b1355966f51008c2cc5aeea345bdb54fdf93e4fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `hylang:pypy-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull hylang@sha256:860c311e00eeb1bca70ad5cac715411333dcbe0c0ec59913188847d0230b30f2
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1438080578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232961bf1abbe5f83ee12600ee293546fb5895f9e94f7526ad5792a5769e2b3d`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 07:31:28 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:31:59 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:32:00 GMT
ENV PYPY_VERSION=7.3.11
# Thu, 12 Jan 2023 07:33:02 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.9-v7.3.11-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '57faad132d42d3e7a6406fcffafffe0b4f390cf0e2966abb8090d073c6edf405'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.9-v7.3.11-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:33:03 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/3843bff3a0a61da5b63ea0b7d34794c5c51a2f11/get-pip.py
# Thu, 12 Jan 2023 07:33:04 GMT
ENV PYTHON_GET_PIP_SHA256=95c5ee602b2f3cc50ae053d716c3c89bea62c58568f64d7d25924d399b2d5218
# Thu, 12 Jan 2023 07:34:19 GMT
RUN Write-Host ('Downloading get-pip.py ({0}) ...' -f $env:PYTHON_GET_PIP_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:PYTHON_GET_PIP_URL -OutFile 'get-pip.py'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_GET_PIP_SHA256); 	if ((Get-FileHash 'get-pip.py' -Algorithm sha256).Hash -ne $env:PYTHON_GET_PIP_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		$pipVersion = & pypy -c 'import ensurepip; print(ensurepip._PIP_VERSION)'; 	$setuptoolsVersion = & pypy -c 'import ensurepip; print(ensurepip._SETUPTOOLS_VERSION)'; 		Write-Host ('Installing "pip == {0}", "setuptools == {1}" ...' -f $pipVersion, $setuptoolsVersion); 	pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip == {0}' -f $pipVersion) 		('setuptools == {0}' -f $setuptoolsVersion) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:34:20 GMT
CMD ["pypy"]
# Thu, 12 Jan 2023 08:51:04 GMT
ENV HY_VERSION=0.25.0
# Thu, 12 Jan 2023 08:51:05 GMT
ENV HYRULE_VERSION=0.2.1
# Thu, 12 Jan 2023 08:53:07 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 12 Jan 2023 08:53:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a931dc7d1f2a06b2a90b68bc4412c2ba2908af1c2cf5bc63e11fa55eb3241f64`  
		Last Modified: Thu, 12 Jan 2023 08:32:02 GMT  
		Size: 612.4 KB (612387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826cfe9a2a5f1b4a3cae3eedc722e73f41dbe2b1e6655baaff675a2cf70491fc`  
		Last Modified: Thu, 12 Jan 2023 08:32:05 GMT  
		Size: 15.7 MB (15742123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bb7c6df4ddcc7da657292c237b8d201a1fd19c7a668eb411f5c212890ee966`  
		Last Modified: Thu, 12 Jan 2023 08:32:01 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc1ad5bbfb577b18a192b4ff4e469a94524e155fe9ea5ac4aa64133bf44b50a`  
		Last Modified: Thu, 12 Jan 2023 08:32:10 GMT  
		Size: 26.8 MB (26829165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659e156230c2b8e23d926c094cba4c2fcb9d0d56af566eed797d11f3a78e6fb7`  
		Last Modified: Thu, 12 Jan 2023 08:31:59 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94518f9e20aae144797238d7299dce512269769e6fc105fd481e58a736acd87`  
		Last Modified: Thu, 12 Jan 2023 08:31:59 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c807defccd8a3ecdd4577325242b2098757bdd5a952daffb133699193a5be324`  
		Last Modified: Thu, 12 Jan 2023 08:32:03 GMT  
		Size: 3.8 MB (3758571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c03b6ea43bee137053c8097568959839e301c349018330c88c13eb7c103234`  
		Last Modified: Thu, 12 Jan 2023 08:31:59 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2da5b4deea4f92ddbb72aea9a163a1f2861892b5113071b1a040c6fed4c479`  
		Last Modified: Thu, 12 Jan 2023 09:01:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b358a8410100d6bd8605ce1a21876d65361d02c43ca0fa2c8ba561e109705324`  
		Last Modified: Thu, 12 Jan 2023 09:01:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb4b0f97929aa5fe3c0191470e64a71153af29b17db889739d9fc3846f6090e`  
		Last Modified: Thu, 12 Jan 2023 09:01:20 GMT  
		Size: 5.1 MB (5098119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b9f856d59abefc7da774b5a47b478c0c1695f206f415c54983e60daac0c76`  
		Last Modified: Thu, 12 Jan 2023 09:01:17 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
