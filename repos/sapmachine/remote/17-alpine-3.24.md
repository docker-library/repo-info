## `sapmachine:17-alpine-3.24`

```console
$ docker pull sapmachine@sha256:b4e6e8856d548290fda1da14fd732e4a7a02cf49b57368dbbdbac9324a967987
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:27d8ea54ec6dbb9d3829fa8f4692cfecb933b29b13f1c300e6fcf99256faf8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208569814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c76ab8e5fac2abf5b742ff0e1ce4244a76f48c04c19628d23daf0e11b54c23`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jdk=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jdk
# Thu, 17 Sep 2026 21:57:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ccc2c538480ec97df8a50542f7972872158e20fb258846cd376ef94ca601d7`  
		Last Modified: Thu, 17 Sep 2026 21:58:07 GMT  
		Size: 204.7 MB (204720076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c20bc5c79ad5f8a1474e65529c09b8f5ff2142c9f3a783d470c2b48e11599120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **519.1 KB (519091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6bef4241516153b3e86882a16cf42980b18d52d92342ba8cf7764c570ec97f`

```dockerfile
```

-	Layers:
	-	`sha256:6baaae34c8fdadff9bb9ab5018b1583c442e4210c20e1cc1ad45519a553a95e0`  
		Last Modified: Thu, 17 Sep 2026 21:58:03 GMT  
		Size: 511.5 KB (511458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20307fc119e36e9ab0263b4d8b58baf843086691b969c3f06d06ed7465bb7254`  
		Last Modified: Thu, 17 Sep 2026 21:58:03 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
