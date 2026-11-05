## `sapmachine:jre-alpine`

```console
$ docker pull sapmachine@sha256:cc497b9b18410aadf0e914ca73e1db5ba4b136ef15d135e7e71fe0b432aa443c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:603dcd334695cefb045013d9d50c00913be8ef04d18f619bf515a42775c93a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233ad75d0df0413a3c8fb277012b3f71f067f1d5054a7a997d2ad8c3d60088f0`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:37 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:35:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 05 Nov 2026 19:35:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3a1215ec5a5c2b9478a2aeec66c132533a9b289e81b177926cb2f780fb2436`  
		Last Modified: Thu, 05 Nov 2026 19:35:49 GMT  
		Size: 60.6 MB (60616933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a097c2f2e73ae79e61be4278538c3914a0e70497d39086268c76c1918d627be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8587a76441606e4e30b24e2b83e4e379acbf90537b82fd0347f335646f42d4`

```dockerfile
```

-	Layers:
	-	`sha256:401dc50bf0d3d87d63fab3ab509b3fbe76956c7edc1feda08ebe30ebcd22837a`  
		Last Modified: Thu, 05 Nov 2026 19:35:48 GMT  
		Size: 431.9 KB (431879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f4f491a0964ac0a3bc3830e37fc1e694a5819523391da8832e6d97895265f04`  
		Last Modified: Thu, 05 Nov 2026 19:35:47 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.in-toto+json
