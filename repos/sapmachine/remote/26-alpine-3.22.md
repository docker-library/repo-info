## `sapmachine:26-alpine-3.22`

```console
$ docker pull sapmachine@sha256:764f0e7ffb9f2ad7f514da4c7f4526ed254f6773dae7efa28c5c19dcdc858a99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:26-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:ebf374cd08e6c6cdc1d476cf497c5d3ea97344015ffde84bed2d8c8a3c086f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144479091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ad423e04054c49bb6bd4a50656e3d8d1cb8df4d0679674528f0b49b930a419`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:22:57 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jdk=26.0.2-r0 # buildkit
# Wed, 22 Jul 2026 18:22:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jdk
# Wed, 22 Jul 2026 18:22:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd2172d1e4d365b0f5201540fd570f5ae3f22388d1f0e8fe7e8f4eb0b09fdcb`  
		Last Modified: Wed, 22 Jul 2026 18:23:14 GMT  
		Size: 140.7 MB (140691496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e6f4127876151662d1b63efd3e3e2d9a388323885cb5c204ea4ee2767fe73cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.0 KB (463041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66071338475f6582b12fa72675d0af692dacbaaacfb875207d2231b058dd2399`

```dockerfile
```

-	Layers:
	-	`sha256:3f1985864ca5359396dc7543f4166dbc5916d7a6856846f2fec721e7e78225c7`  
		Last Modified: Wed, 22 Jul 2026 18:23:11 GMT  
		Size: 454.8 KB (454787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0648194f870c0c9f3b448a406a63e507edf9f7e6ace7dd1371f89d994e9f56b0`  
		Last Modified: Wed, 22 Jul 2026 18:23:10 GMT  
		Size: 8.3 KB (8254 bytes)  
		MIME: application/vnd.in-toto+json
