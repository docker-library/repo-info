## `clojure:temurin-11-bullseye`

```console
$ docker pull clojure@sha256:46c3aca5399255dc3948132b2b78edf567a55c13c69fbb913d4052af0959407a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:473ef0146f446fbf1cd0f0b7098638bfed8aa5ce586166396f84deb8f5e9623b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266177057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c827ab4e025f57325b38aa44a0427ac31771a1a43dc0e066b53b7de7c906d50e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:01:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:37 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:01:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:01:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:01:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4f8ab790cc928b82bd63fb8694425ed698838c374a50c9ce6d279479394036`  
		Last Modified: Fri, 04 Sep 2026 00:02:12 GMT  
		Size: 145.9 MB (145861369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea216b95d4c55c74d267fdca57ed5968f7aaaf869b4ee1cbd8d6bb962759fdb7`  
		Last Modified: Fri, 04 Sep 2026 00:02:12 GMT  
		Size: 66.5 MB (66537652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad88f310574ffdad6595368ddb50e20596a05010eba254cce5071e4e7cc20350`  
		Last Modified: Fri, 04 Sep 2026 00:02:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:8666e1ea5f0f4f7c08d8af43f49a04f0555b58723009f29dc31d635fb129f4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7444529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12868793a3884fb51cbd9008792354853e44ffb607256e6ed03d873ae5b414b5`

```dockerfile
```

-	Layers:
	-	`sha256:8593f089b347757639ea16b4abf1840e713f2436d439aea4e46db62f866a93cc`  
		Last Modified: Fri, 04 Sep 2026 00:02:09 GMT  
		Size: 7.4 MB (7430166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c3bc12e81b607f8831e28d35d7a240b6b7eca9ae26e25831b9a4fd234e5fa8`  
		Last Modified: Fri, 04 Sep 2026 00:02:09 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:afcc60b6ad4a1106057aaa5908d7469aa264ed6226d8f5bfafc4ecf3d1d7d261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261529233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83084b5dc2fff2b27414fdf5856f01ecaa96bf19e39b6cbc0d40029bad83d48d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:05:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:26 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:05:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:05:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:05:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407825487bea73072472c7c46c74563a108efef8ee6fb8687e3ad44ca336c03d`  
		Last Modified: Fri, 04 Sep 2026 00:06:02 GMT  
		Size: 142.6 MB (142566599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe33928deb00d9009fe566ec29d61cbcf3301e493e5bbc29b0a912f010e6db1`  
		Last Modified: Fri, 04 Sep 2026 00:06:00 GMT  
		Size: 66.7 MB (66700647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:decf584407e1fd513761ce4f61b819acb5725defbd5efd2469303c480352d498`  
		Last Modified: Fri, 04 Sep 2026 00:05:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1d478dc07ac7641ea1b7f077fa1c7d826ac1ad3e46e73a4165297366f4862151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7450364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1a786ec08fc34c24a5c0b74f6d15831f724740fb13aec37ad1bba658b7a362`

```dockerfile
```

-	Layers:
	-	`sha256:42e1dad4aefb2d10f4b681494fb11dc7b00d96aa900e69acce51dbb1fab2bd06`  
		Last Modified: Fri, 04 Sep 2026 00:05:58 GMT  
		Size: 7.4 MB (7435883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5258012d5225ef9f8c0f8e3c4c6c588328f4c3438dc64c899ec6f9d02e951923`  
		Last Modified: Fri, 04 Sep 2026 00:05:57 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
