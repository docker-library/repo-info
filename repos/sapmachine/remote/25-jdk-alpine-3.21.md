## `sapmachine:25-jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:81565ac5cbcb9a8d033982b5446b88eaff8b12ac0fe7de1e54dea6066ffe372a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:ba960286957375fc7ab56e372aa052aee51dec91efa4ff02d35a432e90305678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141321090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240b9f6a268f5b3fe572c3cfca8f418b9ce4de3ad4f3cdef2af3fc0926e5be11`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:41:35 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.1-r0 # buildkit
# Wed, 18 Nov 2026 16:41:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 18 Nov 2026 16:41:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd908e450c55d2513e7a61779db6b90b7fa016b58f4959e417e7495c4be3d68`  
		Last Modified: Wed, 18 Nov 2026 16:41:51 GMT  
		Size: 137.7 MB (137695688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a78288c2557167f1798b118c7026267634f463d303b0abbdb1e3bac17662bb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.5 KB (468459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c74bed8b40e416969001e03f7bd1d2f38839f139d105148914f15aa97eba48`

```dockerfile
```

-	Layers:
	-	`sha256:69b078055bb14ddaaabc06b4f870fc6f58f594818555aaf8e46f865b2b9d6fed`  
		Last Modified: Wed, 18 Nov 2026 16:41:48 GMT  
		Size: 460.2 KB (460175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89a8c81b601f34bb90b5237593c7d9ddaad8de25f5565ffb7591c3a225a01a68`  
		Last Modified: Wed, 18 Nov 2026 16:41:48 GMT  
		Size: 8.3 KB (8284 bytes)  
		MIME: application/vnd.in-toto+json
