## `sapmachine:alpine-3.24`

```console
$ docker pull sapmachine@sha256:8f3d1eaea05588ea453c0c90722af1deb0ad978fd369e407e0e5900d7320d899
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:29c8cc74a05e2c8f2f75400b0d5bbb4a028ecbef18e2cf2b474ab42f9f0b5742
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143446896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718a9d93279098ff03744dab8e08ddec6dd2181d79731e5c620ae195f5db369f`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:03:50 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1-r0 # buildkit
# Wed, 21 Oct 2026 23:03:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Wed, 21 Oct 2026 23:03:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d91a4f61f16fafc54842c05be427131074bea1cbca3777982fa8f47db527d3`  
		Last Modified: Wed, 21 Oct 2026 23:04:08 GMT  
		Size: 139.6 MB (139593787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4fa5cc3e033440300491daf3b56f0c5ebf7433cd4aba66e7a619be76e62447f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 KB (462469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956872eaf5728ab9605c69cfa598e1e8f0857434a3b91583427e521868b46a29`

```dockerfile
```

-	Layers:
	-	`sha256:1432e73bd112ac47c1cacb97e329cb89d4e27eeb0cc8c11d5f243c3955248ad8`  
		Last Modified: Wed, 21 Oct 2026 23:04:04 GMT  
		Size: 454.2 KB (454215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8046252942396e0a675114f73f291105f38b104c4eac0edb3f97ba69f11fbfd`  
		Last Modified: Wed, 21 Oct 2026 23:04:05 GMT  
		Size: 8.3 KB (8254 bytes)  
		MIME: application/vnd.in-toto+json
