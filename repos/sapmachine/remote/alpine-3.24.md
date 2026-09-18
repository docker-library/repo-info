## `sapmachine:alpine-3.24`

```console
$ docker pull sapmachine@sha256:6b63e5300f72f231d90fdf89c9e65ec97f163bbdc75ce41b4351f80891673395
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:066d3de4b3714db975e97088d19600b7d65810109a148bb498d28539c7d96876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143399956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72017b0bc6b8b968b12a3323b2e1f57234a50023f8d90435a1122aa9a31486f4`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:11 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Thu, 17 Sep 2026 21:56:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8667384b6a42cd3c86c7e376e37788a4964e211127845e952fc833424e34c4e2`  
		Last Modified: Thu, 17 Sep 2026 21:56:29 GMT  
		Size: 139.6 MB (139550218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b1f13ccf9ebcfdf4583475043f5ab1a3e954bd748fcc978f95a513dddb41a177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.1 KB (461109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bef4c959098cc99511d5bb2382c093690de386f526b9ace4c31d4d74d42074`

```dockerfile
```

-	Layers:
	-	`sha256:b7ee4e4dc6e800ac8bdc4bbd1fdf49e2cdc1390ce8bb43de5fb99654f8600edc`  
		Last Modified: Thu, 17 Sep 2026 21:56:25 GMT  
		Size: 453.5 KB (453531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:471f4e5ad64788e402e8921b716e042e76968493a868bcd911ec0710090fe6ff`  
		Last Modified: Thu, 17 Sep 2026 21:56:25 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json
