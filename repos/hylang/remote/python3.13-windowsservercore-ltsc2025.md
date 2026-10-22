## `hylang:python3.13-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:89f1356ebd4755ce8266c858d82cbba01b1d695c8e463c120f323248fc1d0aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `hylang:python3.13-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:62264f407061e9fe1cb400c6663b81c985a1bb822673402da8771c9bb9208c0d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2460970284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf9492930643b879d7767baca3a9731e763540f63e12046f9d3e3793b2dc0ea`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 22:12:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:30:35 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 21 Oct 2026 22:32:35 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 22:32:35 GMT
ENV PYTHON_SHA256=5da012101ba2e17113a9a1cd901e9ce1441086f2b7ecb5de06ec94163899a190
# Wed, 21 Oct 2026 22:33:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:33:12 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:46:12 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:46:12 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:46:38 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:46:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191e7b66cb854415c1a42281cdbe07fa32854ef0e4df6bcc374620de008517f2`  
		Last Modified: Wed, 21 Oct 2026 22:15:00 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cfadb3c33e7d4fbb88f6dbecd2057b7a52299f3a4997cfdf0726c3a8a42a1`  
		Last Modified: Wed, 21 Oct 2026 22:31:15 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8ee90e52831bcc3dd16384842885a35ee2f66a2f3b31731682e3a9d7ec7f5c`  
		Last Modified: Wed, 21 Oct 2026 22:33:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904debd4d9cfdc48d38dbc6caca06e46c2b9c6f2bfb300a1144f5a7a0edca608`  
		Last Modified: Wed, 21 Oct 2026 22:33:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6d4124f239d6977d720e770c04832249715add4b313b79c7676494d85947a3`  
		Last Modified: Wed, 21 Oct 2026 22:33:21 GMT  
		Size: 60.6 MB (60646106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a078a3a3b132b9568362563f3bf737a717412c134c6f3adaa31ea26da01666d6`  
		Last Modified: Wed, 21 Oct 2026 22:33:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce135a86967e6523fa580ea47e009f4eff7b4c2995fe37eac5ce4819313ce6cd`  
		Last Modified: Wed, 21 Oct 2026 22:46:43 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372fe9bbdd27fc009a0c1ec16274a2e30d2203fb179c52e753d915e34165846f`  
		Last Modified: Wed, 21 Oct 2026 22:46:43 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bacd93136c78e35fc1a72baa52394f967cb6c742f4ab41e1258137e97b6c405`  
		Last Modified: Wed, 21 Oct 2026 22:46:44 GMT  
		Size: 8.3 MB (8319554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4897c305870b651af5087b129cb75ccaced86ef836a8487063812f57bd264`  
		Last Modified: Wed, 21 Oct 2026 22:46:43 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
