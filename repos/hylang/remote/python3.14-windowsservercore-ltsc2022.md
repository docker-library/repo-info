## `hylang:python3.14-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:a816624bfbef95c1f7a6bf29f86dee5c546bdf9f29dcdb62831311a0a9c65aa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `hylang:python3.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:0cc3c886df1cf13a6703d2dbcff97251e97f1dc8fd8284e27f5014e04f25aa06
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234984841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d510d2752c6de8c92794dd5662e9cf8b53770423b5f6cfbec29c3a2f09ecd82`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 05 Aug 2026 16:15:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 05 Aug 2026 16:15:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Aug 2026 16:15:50 GMT
ENV PYTHON_VERSION=3.14.7
# Wed, 05 Aug 2026 16:15:51 GMT
ENV PYTHON_SHA256=9d9eb2709ef81bf5cd30db3c2096bdbc4ea10087c22e62f27d356b36f6ae9649
# Wed, 05 Aug 2026 16:16:56 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 05 Aug 2026 16:16:57 GMT
CMD ["python"]
# Wed, 05 Aug 2026 17:23:17 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 17:23:18 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 17:24:06 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 17:24:07 GMT
CMD ["hy"]
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
	-	`sha256:4888c55f552b1ae2e49e53be9f52b37650f3bb53035a1f864421fbb6014e62ab`  
		Last Modified: Wed, 05 Aug 2026 16:17:03 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c14a657edc2c63719845b0b8546ef85d0de7a79dcabde0749e6313d4dfed2d5`  
		Last Modified: Wed, 05 Aug 2026 16:17:01 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9675ff6d227114706f276d38b8b72ede5505fe45faee17ffb80225825e78b2c`  
		Last Modified: Wed, 05 Aug 2026 16:17:01 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8981f5e673d9cb90c1447c62e410a73999e1859bce92ea745708cd399006bc`  
		Last Modified: Wed, 05 Aug 2026 16:17:01 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbd83adbc3a4855cd604c71f5e282430473a6f28909e8882bbad7e33a34452d`  
		Last Modified: Wed, 05 Aug 2026 16:17:06 GMT  
		Size: 69.2 MB (69162787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0543ad70e977b41fe047beea9a4b2d48b772689befe969f86cb81122aa6459e9`  
		Last Modified: Wed, 05 Aug 2026 16:17:01 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f4102812435ded6e1ca10243eb0c3cc18411dcdb6dd3d5569814965bd12c1`  
		Last Modified: Wed, 05 Aug 2026 17:24:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92214a3b7fe721621e6091f369d326bc7565fc05ef1ace29129259f7291d6b2`  
		Last Modified: Wed, 05 Aug 2026 17:24:12 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc79d9e657e35db7ce7cc9e81a88567c6e9303ca3bcb05a4a3697def6a13abc`  
		Last Modified: Wed, 05 Aug 2026 17:24:13 GMT  
		Size: 8.3 MB (8258377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23633fe50cbdd9afc1d1b184e59b0b5c321238a75b5ae9002f2b2f4a9a5eed5`  
		Last Modified: Wed, 05 Aug 2026 17:24:12 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
