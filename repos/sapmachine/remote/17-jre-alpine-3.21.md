## `sapmachine:17-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:4e7c138cec926e0018df11255a53c477d24a08b38602f983504487b4869332fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:9edccb39acd4cb02ba91436bad036502cb39de81e6b63e31c6e9ebe8aef7a57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60114862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b720508736eca28f2e82bc6cea62cfe87d0374dfc335fb0b40a0a416120c83`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:26:11 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20-r0 # buildkit
# Wed, 22 Jul 2026 18:26:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Wed, 22 Jul 2026 18:26:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f057ae1fb9c8ce3e9d626cc0325fa6c5ff2c3ea7bae70d4b447eb55f1dad3de8`  
		Last Modified: Wed, 22 Jul 2026 18:26:22 GMT  
		Size: 56.5 MB (56467987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:046e1e90624a7ef70927691fb2563bd8dcdfea2ca1fa8c46a01596abfdaeed6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.9 KB (433855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65bc7499e678af9a6f28e25ec14c0ec59ec0ae53aad2616d6c49a6967656b6b0`

```dockerfile
```

-	Layers:
	-	`sha256:f702346f215accafef61c31d3915b9eb460d507ba92e9cac3b14126057904831`  
		Last Modified: Wed, 22 Jul 2026 18:26:21 GMT  
		Size: 426.9 KB (426895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58233c53a6b38abbe454cf8dce9ec663af1c323e12c89945209da5b98c1ab8a6`  
		Last Modified: Wed, 22 Jul 2026 18:26:21 GMT  
		Size: 7.0 KB (6960 bytes)  
		MIME: application/vnd.in-toto+json
