## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:4efe2e48b85f62bab91e866f457226c0bac1895f33b0f64a0cbc7285fda13ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:c0da6ecac0c05a98cb9ae49c01b10a722a1297d1d433652632ad16ed065492b4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437158595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100997fbd1b610d5b876151ac091cf4b22397516ae039d84f96d9b0598248ef3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 19:10:30 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 19:10:32 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 19:10:32 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 19:10:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 25 Sep 2026 19:10:48 GMT
USER ContainerUser
# Fri, 25 Sep 2026 19:10:48 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 19:11:53 GMT
COPY dir:bc2bc1251ba10337238f281e2f0e01c44eda9f17986c4048317b8d816103d79b in C:\openjdk-28 
# Fri, 25 Sep 2026 19:12:00 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 25 Sep 2026 19:12:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12f7964f053e5bf7f5743d13455be36256cb566732cd02d03707ec21cddda49`  
		Last Modified: Fri, 25 Sep 2026 19:12:07 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565cb2cd327d6eb79811cf4e010a4be84fbb7fe6f890a9b60c680bfa7ce61e`  
		Last Modified: Fri, 25 Sep 2026 19:12:07 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7318533fa880672222717ac2b4cf2f93e23e353d6380989699a4fc614bcc4520`  
		Last Modified: Fri, 25 Sep 2026 19:12:07 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31417737ae5ff7089ca9c7990de9e2f9f6902b10fbdda8c63880f31d44f0482`  
		Last Modified: Fri, 25 Sep 2026 19:12:06 GMT  
		Size: 70.0 KB (69955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165015d8f3dc24bec3126fdd184bf2d5c5dd9e53ab7b6951f777bc9ead182dca`  
		Last Modified: Fri, 25 Sep 2026 19:12:05 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7758446c9027e157fecb7f5f3c67314f9089904e13d6dc1170ddce4f71cdfa`  
		Last Modified: Fri, 25 Sep 2026 19:12:05 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f083db4cf0c7e8dceeaf0e7c5b9987224594539ac94b126ac2be58dfa8f787`  
		Last Modified: Fri, 25 Sep 2026 19:12:20 GMT  
		Size: 239.3 MB (239338650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa188cc80159dbf00f42d834f224cce3724192fd3ab32da3aaeaf8ee2719952c`  
		Last Modified: Fri, 25 Sep 2026 19:12:05 GMT  
		Size: 93.2 KB (93213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9e9282f933010d309cc1835b2c433579647dbd15877490bb679f90d0e108a`  
		Last Modified: Fri, 25 Sep 2026 19:12:05 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
