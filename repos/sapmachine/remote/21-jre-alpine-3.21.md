## `sapmachine:21-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:5da00d13ceb99e261f951fe90863373baf1b913155966eb20c3ef56a36229cad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:9f6914ca742a5810b8ac7f90f305b4a298cb05f0cd673e0d56420f51a822e7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66094049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae73c33b4fb6bdf60e529cce900a9d82ac82d842a509a03431d752b8b66d4258`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:36 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 17 Sep 2026 21:57:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff2253db599c28f048f9b2ebfe299359a3392721a0f9614b9dd5db51d0d592b`  
		Last Modified: Thu, 17 Sep 2026 21:57:48 GMT  
		Size: 62.5 MB (62468029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ac1b68490311a7c60e90adbe7b4cbb80af666929e542b5f3860095f507aa2ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 KB (435153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0f3c2276a36e22a5b35c508c19c1885c30098f311a2cfab83ae9476b2022ef`

```dockerfile
```

-	Layers:
	-	`sha256:9aeeeeb42142c5b92fc57c373978e3a11355afeb4d046e44eac3ada3d08b6c38`  
		Last Modified: Thu, 17 Sep 2026 21:57:46 GMT  
		Size: 428.2 KB (428183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8303e1cb311bbbcc68a05e789ef268cd18f7877afec8048122155e9bad6eb145`  
		Last Modified: Thu, 17 Sep 2026 21:57:46 GMT  
		Size: 7.0 KB (6970 bytes)  
		MIME: application/vnd.in-toto+json
