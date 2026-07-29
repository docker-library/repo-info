## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:581bf3f0f077a0d3a8c8f2af559e6f7539ed58225bc735c24668ba5245d3175e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ae16ad23c8e2bbd54605a59a998ac8e0c5216ec5681a6c7ff5524a58a8bab678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175494522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95309ebc4a46bd2405f5f80adbaa12827d5100740b6bffc219a9f3f770c8abb4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:53:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:53:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:53:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:53:26 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:53:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:53:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:53:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cacd62436293d327620e13dbbf67031140eee9e95b7a24867a872c66b9cadd3`  
		Last Modified: Wed, 29 Jul 2026 17:53:57 GMT  
		Size: 55.2 MB (55198726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe61b5ad6e67594490a201061a8fede74ec2f15bc1e9ac6eb541c20c6e6ecb5d`  
		Last Modified: Wed, 29 Jul 2026 17:53:57 GMT  
		Size: 66.5 MB (66518574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a98ac2372af327273aaba9b8bc00cfdc4d0caaf9e181d9508ade4a5bc2eccd0`  
		Last Modified: Wed, 29 Jul 2026 17:53:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:a6f73cd9e3065d82db67c6587ebb8210bfd887db7c783d367b7bf0cf8d1986f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41019dd281fcc68bcf27a1f3def3f4269df3f5b45bebeaffdc494d63a2b09db6`

```dockerfile
```

-	Layers:
	-	`sha256:a6cb903b761f74300cce5fb0f260f15b312f422883b58c060a277b0d576df860`  
		Last Modified: Wed, 29 Jul 2026 17:53:55 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f59c6b2db1e6ef0e32baf94c97bc4ab2d9e1d6d12726f83248ebe20a4fce577`  
		Last Modified: Wed, 29 Jul 2026 17:53:54 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6314a3f6689ef58c27f0c2d48ff48f74be8d478fcfa2fee9d62417d499e3dc55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173220016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dba7365d7355ac861f123844b6dfd1c97ccfe4b3e9e5a885d905d6fe9602304`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:01:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:01:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:01:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:01:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:01:55 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:02:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:02:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:02:09 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177a86370dec23a1a84fda0a0de9056881acb31062f9409fc07fedc19a7466e`  
		Last Modified: Wed, 29 Jul 2026 18:02:27 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbd80b150336753f7936920d9bc222e25b71d4b155a72ba6c32faeef2d158b6`  
		Last Modified: Wed, 29 Jul 2026 18:02:28 GMT  
		Size: 66.7 MB (66685558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cee9cfb9d2527cc922246e6f940c0d21f15acc6fb41de92b92cc0b70731363`  
		Last Modified: Wed, 29 Jul 2026 18:02:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2015493b1dc4ed53da7b2734b1489d838deacd8ac15dad9311bf380f23b2a60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca385d214a9d3054a222f972fb807a20a92b83e9c270dd8139845a1d012f4453`

```dockerfile
```

-	Layers:
	-	`sha256:5aad0d6bc5ac03dff3f86b870812ab190ba69563e4c47d24857424ae7ac471a8`  
		Last Modified: Wed, 29 Jul 2026 18:02:25 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb03be3f451a6ed3a909cadc4945deaa38d66902dc6b923c945cb9dffbb33e8`  
		Last Modified: Wed, 29 Jul 2026 18:02:24 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
