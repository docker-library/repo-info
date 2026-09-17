## `sapmachine:alpine-3.24`

```console
$ docker pull sapmachine@sha256:535b87e69445ff0430a3126c847e0dc1813017c10e9c6e1152cb3cf16fa4b87e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:f3b7e331b1a992f0b418cd98d4b8a7de233e92784306509104fca2e2c7e8b715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143396807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5059b2f3e70c90aceb65092963a1942f6d95f025a0a8507595e44ea630dc224`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:35:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27-r0 # buildkit
# Wed, 16 Sep 2026 16:35:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 16 Sep 2026 16:35:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6899dc9c3fb066a5d8815a7f30bc0df29da2aa0e56291207cc516484b8e08d`  
		Last Modified: Wed, 16 Sep 2026 16:36:04 GMT  
		Size: 139.6 MB (139550416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1331b68d0c8192e0151d4f29944316da127087ee2c4b8994419cc3904de0e67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.1 KB (461109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704556ceda4c813e6028bb8cfff0d2c9d1299632f6c3b28fa5e2cfdf421a6c36`

```dockerfile
```

-	Layers:
	-	`sha256:3a64a0f574b21710cede569d83c61359ddbbfbf88ea1e584b653d35013fa1554`  
		Last Modified: Wed, 16 Sep 2026 16:36:01 GMT  
		Size: 453.5 KB (453531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d31e9c06651df361c75b309d92f831c8f9913db0bdea713bb6a89f1e86ff9f0`  
		Last Modified: Wed, 16 Sep 2026 16:36:01 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json
