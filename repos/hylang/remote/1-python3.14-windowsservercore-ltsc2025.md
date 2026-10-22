## `hylang:1-python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:bbe0a09212e4f6829d524f0d3817bc660b0f178c42111ce24ba95fe173b41f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:670c324153c81458e44000fa28c2a2559ab11a3761e3b3ee3b2dad9df28504a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2469603909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228a9ce826434c42e4b2248954c3647fd2def8a0fdfb7a47ad4b289f06d221b4`
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
# Wed, 21 Oct 2026 22:31:35 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:31:36 GMT
ENV PYTHON_SHA256=a247a0b612244a803f507b39fb7121e3602e4160d59c3b99d98e735289c53394
# Wed, 21 Oct 2026 22:32:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:32:08 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:45:50 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:45:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:47:32 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:47:33 GMT
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
	-	`sha256:b45fa3391b4b67643cef4085fbc9b0102cccd3c2d331ffe9c4ca00031ef8c7c3`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f0588e337f9a453b7bd5f98c7f10033ad1fb604e55eb7e0ec8b0bef4bbf697`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d48a733d7f1d7336080c7d8ff366db80c91cdf2142992e9db819cfa5bb250a`  
		Last Modified: Wed, 21 Oct 2026 22:32:19 GMT  
		Size: 69.2 MB (69246091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116554fb03f1f30fc50d8ad015ec692e0580d4dab9892bf214fe92ffcaefa7a5`  
		Last Modified: Wed, 21 Oct 2026 22:32:14 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af252eb0985c01a1591b3251414e606725db07dac0cbab68ce2b8c7575e5403`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a23202c82f6241b0c1503bbe3223548ea77db2ba369d8c7da427c7a20d31584`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8dadf95e5d1a3f19e7a9e2c9093733f8684fd168c334b43cdff27479636595`  
		Last Modified: Wed, 21 Oct 2026 22:47:38 GMT  
		Size: 8.4 MB (8353089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201acc156f37b31888f471ed471fb496d3ba417bdc13db9de42b92f4eeff5c19`  
		Last Modified: Wed, 21 Oct 2026 22:47:37 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
