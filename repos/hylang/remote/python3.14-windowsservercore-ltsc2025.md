## `hylang:python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:337a9063a8a5e509a7004dd1b8872fff585c7c286bb95c25653e6b8faa075eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `hylang:python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull hylang@sha256:f97da47a6b5f3f95de828866324020f5ce5553475303437870aacf2160250196
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2485005194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6d1e04e71f5854eefc099707bdfe8e22c03acb509d297e9bae84b5c783c783`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:02:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 11 Nov 2026 22:02:03 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 11 Nov 2026 22:02:03 GMT
ENV PYTHON_SHA256=92480239264744fe0386a1bd8275786fefa126e3129e56a68e22b52c73329965
# Wed, 11 Nov 2026 22:02:39 GMT
RUN $url = 'https://www.python.org/ftp/python/3.14.10/python-3.14.10-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:02:39 GMT
CMD ["python"]
# Wed, 11 Nov 2026 22:48:41 GMT
ENV HY_VERSION=1.3.1
# Wed, 11 Nov 2026 22:48:42 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 11 Nov 2026 22:49:27 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 11 Nov 2026 22:49:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a3b6b33e939ac2fa4a081c58781a823999ca23a1b7caf4a338528815644c64`  
		Last Modified: Wed, 11 Nov 2026 21:52:38 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bed6cb0af22e4f523419252eef009bc802b1908e59debab5fd56086b2f6b4b`  
		Last Modified: Wed, 11 Nov 2026 22:02:43 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e8c8f6fe5bf2cda38a0290ab8f403bbff8e38d8e4979e899fc27529fc3e8fb`  
		Last Modified: Wed, 11 Nov 2026 22:02:43 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0578e1f96ca67e220dfbade04a229073e74d58c3f3239c557fab81d2a987c9c`  
		Last Modified: Wed, 11 Nov 2026 22:02:43 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa225a2781b8d9f8b3dbe601018d407b6f96bcb75155744dd3255b814e0aa3ad`  
		Last Modified: Wed, 11 Nov 2026 22:02:49 GMT  
		Size: 69.3 MB (69307518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d60329eba89f50d4717171128624f617130f4c3b5499aecd33236e1b36b4d59`  
		Last Modified: Wed, 11 Nov 2026 22:02:43 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bec458a3a64580777b15420b4c042afe3997a99ff628571d87cc7a8c945032d`  
		Last Modified: Wed, 11 Nov 2026 22:49:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dc42d1bbeeb3f13f8301aef0b0284e0bf5779b9053fe50025361cd814c3f2b`  
		Last Modified: Wed, 11 Nov 2026 22:49:32 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe007286821f348b0cf383c53b0b87893d3230b3c53a055dc31fa04290d02769`  
		Last Modified: Wed, 11 Nov 2026 22:49:33 GMT  
		Size: 8.4 MB (8356419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61805e60083416bb07bf9a3174a344557d1138f4288c8c3b036ebb91837c8387`  
		Last Modified: Wed, 11 Nov 2026 22:49:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
