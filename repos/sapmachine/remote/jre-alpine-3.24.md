## `sapmachine:jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:c987dffae32f20954682f14f74078454476aea0d2e27a1983bd7a090609d9fd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:3ffc0f928162ded74e9f9e265b9b544db68d1942c642984a45ab3b0392a0351e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64613844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00600772262e5d4c6c08645648a6f5673f7a7f2f14d61ec98002bbb5a5a088a`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:10 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 17 Sep 2026 21:56:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29aabfc4524729d59061a4f19008b754ec512879def816b521499bd741f0f65`  
		Last Modified: Thu, 17 Sep 2026 21:56:23 GMT  
		Size: 60.8 MB (60764106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7495e991763ddd83a09d58f95da64f74af054b37364f79f91b37a81112b8d687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa27476573eabc70ad2b0a04634ca1859325a8526cb0fe5efa787d43493d480`

```dockerfile
```

-	Layers:
	-	`sha256:419e26e80d79d192d1d84bd8596b9182a3a49c9d34ce668846daf29a79f8a007`  
		Last Modified: Thu, 17 Sep 2026 21:56:21 GMT  
		Size: 430.6 KB (430594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63019597feb72c9f3a40e37c5d52b89cda72bb6b162fc04e3aafeb1cfc394981`  
		Last Modified: Thu, 17 Sep 2026 21:56:21 GMT  
		Size: 6.9 KB (6935 bytes)  
		MIME: application/vnd.in-toto+json
