## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:5d4f8a4673317abc931d83d80376c58877e0bcb314f7f5f9eac2a67555ec0900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:98c43d56167e703e6d52f7c9f36039f6ab97dc7c2f8191a96ed05f03996128fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150082176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ba0e075d6f8d921207d0a42765dfa826e09ed56dccd89eed5263deeb5fbe9d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:31:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:31:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:31:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:31:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:31:56 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682c5cc81a8901854fc671aafca042780a347cf4543e0e103d2b28624b7ee19e`  
		Last Modified: Wed, 16 Sep 2026 04:32:27 GMT  
		Size: 55.2 MB (55164416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cae86e08d44e7a7028e9d3d3889e17047e871b93fa187568e4d64cc56e2bdf4`  
		Last Modified: Wed, 16 Sep 2026 04:32:27 GMT  
		Size: 66.7 MB (66684457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fa180d1cc14d23fb746a2f18e0ce47e0b5223a380786047eec7c63241e19d8`  
		Last Modified: Wed, 16 Sep 2026 04:32:25 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bfd36a16397294946bbb8870891cab41c34572aeb81e06d8300ae5c3b28dca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc924dfa0ec91283773171321be34ab96b33ea8b4431f7554d753bb9d35c6ae0`

```dockerfile
```

-	Layers:
	-	`sha256:f86aa5e52659d32e97cfa70cfc3b614d868986e28c08fbb82aaa81d200931e2f`  
		Last Modified: Wed, 16 Sep 2026 04:32:25 GMT  
		Size: 5.2 MB (5239626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf1259d0b09b5e6e194959ef391b8cf69b24bf049004013645bf53f55c4a507e`  
		Last Modified: Wed, 16 Sep 2026 04:32:25 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:50d1e6f17cdd5d095f2b191509406e204aae20202acd4995d1036da3dd71206e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149064436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b51adb05e0ec713dbdc1ba4322ee06ec3c2baafe6ba78d047f022c83a4485d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:23 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff9b3e1bb4532bf646b28c9f53538e6b891e1dbcc5211b2f34e4826b76634ce`  
		Last Modified: Wed, 16 Sep 2026 04:32:56 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3749a917674d0e28748273152ff600698558ae0888feccf7836fe1f398c895bd`  
		Last Modified: Wed, 16 Sep 2026 04:32:57 GMT  
		Size: 66.7 MB (66683757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d822aa49daab374c1281a750dd68a3677d3a8e0ab5208f2ed58a4f0c1b22b49`  
		Last Modified: Wed, 16 Sep 2026 04:32:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4bba72c10a9bcf7643cc1b97a87b83b24954973aadef4f465e70027607ff59cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8fbc1a37df80daf7d16cc2231f291bd845c2fc36eafce00b5c72a67d4c9d27`

```dockerfile
```

-	Layers:
	-	`sha256:c03dec55bfc19c2f12d8d6903466d94312724c9af57ce7fc891e9c8f2e5a96d1`  
		Last Modified: Wed, 16 Sep 2026 04:32:54 GMT  
		Size: 5.2 MB (5246087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e399e1487e3f25d5b9a6fac06008c974cd91b0fee3383e0c56686c6e653c30e4`  
		Last Modified: Wed, 16 Sep 2026 04:32:54 GMT  
		Size: 14.5 KB (14517 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cfec35ea50ccdf508304465238da8c9de8cb00d93c7cfb58d2db49e6d30781b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157246429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522cf41e45740ae9c4751c87e3da502ddeeb5e84c5ba7ca4d757a156e785d28e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:01:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae276a4f9319465480c60731d2db38a6791b5c65d840ae9a8d2bf9216c2eacc`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a2124bdf624e10e9a717203b137674964914ed843ea9b2f4897e8ceb0e5c98`  
		Last Modified: Fri, 04 Sep 2026 00:03:01 GMT  
		Size: 72.5 MB (72498647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d921fb9cb36192ed0886e5f63ababced757d15a17881942dbf47db52c0127adf`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1a728fcdb82665b1bd643d8d29c9527131837c83d902fb6d4b98ac2fd065dbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4951fa70567694b24653768c9b7b0f3a44bfd0c94b672d7820ba3768ade0ae64`

```dockerfile
```

-	Layers:
	-	`sha256:7161cc532416de44c159b5fdbf176ceb9dd65df2fa55d8278be7bc4546e5a295`  
		Last Modified: Wed, 16 Sep 2026 10:18:49 GMT  
		Size: 5.2 MB (5245351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb620785cf0228aaf3c08ce810ca3cd01cde2d6cc6787417c48fa4f5a2e634ff`  
		Last Modified: Wed, 16 Sep 2026 10:18:49 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
