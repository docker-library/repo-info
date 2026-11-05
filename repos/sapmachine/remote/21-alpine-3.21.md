## `sapmachine:21-alpine-3.21`

```console
$ docker pull sapmachine@sha256:610ecbf9a3b6e1b4d39720f35370457445002195b0774c4a3c265d3d8598968d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:cc452d36ebeedeb26c8aab7e551626fe1a011664d630a1c2a72fc81f79d03227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223276521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80278a0341409903bd76e0cc480dddfa830667708f0650de374c4c5a8d07470`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:56 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4120f7b148acfc8e6b6b21453302e092a784fce52bb1997a4e4e7622e57caf4b`  
		Last Modified: Thu, 05 Nov 2026 19:37:17 GMT  
		Size: 219.7 MB (219651119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:31e496380584de8d3d1993bb234e3d9892928891889d8d7949076e4d3ca231c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854d1baa2b52cb00d1e6068e5dc0acf38580899830766edb87cae45a62db2e83`

```dockerfile
```

-	Layers:
	-	`sha256:0f6d52069b315afc575736a90266632392430859044f4c8756f9a0770c3acf9f`  
		Last Modified: Thu, 05 Nov 2026 19:37:12 GMT  
		Size: 516.1 KB (516084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df6d6a592013830f0420ac459e0b2169c433824d5fa2cb064b959016a1af155a`  
		Last Modified: Thu, 05 Nov 2026 19:37:12 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.in-toto+json
