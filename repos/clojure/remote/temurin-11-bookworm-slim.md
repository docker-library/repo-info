## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:75a7822ebea49eb604d898e95d32d2a5f758879a47261edd1f01a0c24113cb72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2c0059b5236c6caf4a54dcc0934024c68734736ad6c338aaf52e141d2e5a98fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd50f1bb42be30ddf23366d1014831bf277bf6fef898804269dab9034722d67`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:01 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eec4eb0c400b31f0b9741e7a6d85fca9830007c24ed64abbb57afbc9d1eaef9`  
		Last Modified: Fri, 21 Aug 2026 19:12:36 GMT  
		Size: 145.9 MB (145861400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5321228532e226d603ef3d009d6eb71b2a0f36e91dfe5eafff83b4da28f74b7b`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 66.7 MB (66681846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18db7897d5b9be69381c8d81a6d1c1c92d8a8ff7da681c89ab0544fd0ec6ed44`  
		Last Modified: Fri, 21 Aug 2026 19:12:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4155a3136c7c6d160af4caaea7ead44fa3d951edcbaf6ddb4a720d1e4c210ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab87742d65719001c86e76ad7998b0b5a9f74675a68769831a721d8c87c7ccd`

```dockerfile
```

-	Layers:
	-	`sha256:b0471203d28b80140198794e562331c9f0673619ad75c621c88163942fee51b9`  
		Last Modified: Fri, 21 Aug 2026 19:12:32 GMT  
		Size: 5.1 MB (5138752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a4a4f66e68f7426bfc8367c2792e0d7d27e3349451bf9c138927a96f556a764`  
		Last Modified: Fri, 21 Aug 2026 19:12:31 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1897b22062900e732145b53a194818f58d50daff1fd774b740aa6fa2a727dbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237352903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb55b666fee93a77948f722a69c2468c388044ca93bfe9ead363fa458c5977c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:31:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:01 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6bbc01803553c2ca6f57d256eaa2184b768d50b54322d7189bc24d863fefb9`  
		Last Modified: Tue, 25 Aug 2026 01:31:36 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88dd3ab5ddaf3f12af99b31a236764eea148bf547673144724318641025b473`  
		Last Modified: Tue, 25 Aug 2026 01:31:35 GMT  
		Size: 66.7 MB (66668374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1decba4670173eb7d88ae3ab741a3bb410a8c031b48c18c2cc04770bd87cadef`  
		Last Modified: Tue, 25 Aug 2026 01:31:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:df69998cdfc2af27d12282abc113b755a6c846b03e21e1e53b9cfffd208741ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d331c0a74b48beab8bb880151e645223029d8c8f44b3567b05e8219cb7e3b4`

```dockerfile
```

-	Layers:
	-	`sha256:9db02a676f6cd6e86338b95b83ce388c195a0964c83263cc6105420fd418ea77`  
		Last Modified: Tue, 25 Aug 2026 01:31:32 GMT  
		Size: 5.1 MB (5145131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f927e6952e6ccfe1da7e3987d714c68f2bf2f090353ceda862eb7eec5460b535`  
		Last Modified: Tue, 25 Aug 2026 01:31:32 GMT  
		Size: 14.5 KB (14538 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db38a767ddf2355ee0672d7c660eaa820f33a3002e6ec3fa7498f028ddb79d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237664039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25143e02fac9d4de064381781d21a1ed7520e38b43f201bd1cca243b15b32d8d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 21:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:29:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:29:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:29:35 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:42:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:42:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:42:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282c674e47b3863a0e354f08ab41f6f080883b5d951c2f4d2e649045fd80faf2`  
		Last Modified: Fri, 21 Aug 2026 21:33:15 GMT  
		Size: 133.1 MB (133089928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a681ca9e3d49f29f6d35a4d8cbde6ee86b5078eb46259156011e19563aed9b`  
		Last Modified: Fri, 21 Aug 2026 21:43:10 GMT  
		Size: 72.5 MB (72497145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fee92203caacad2bf7eff2457cc8683b7f63d5beaba1e0281a6b6c168fb955a`  
		Last Modified: Fri, 21 Aug 2026 21:43:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f8e346d210762ac405e9c221eaf5269620a36122516c96a1af67b9888bacabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb291f25d0a7a4b3154d92b50622bae76849925e7014fb2e46a4fb936dfe79ff`

```dockerfile
```

-	Layers:
	-	`sha256:9fa0906b03819387dbf3e99fd3785a2a7c8e2469410d99a481b500c5731ca5ee`  
		Last Modified: Fri, 21 Aug 2026 21:43:07 GMT  
		Size: 5.1 MB (5143295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebf86b7b2b78b00a079c12c9dd4ee5e9ecac0090eb8cf7566c0c6eed1d24dc2`  
		Last Modified: Fri, 21 Aug 2026 21:43:07 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:5cf68fb6108bc7ab02874c381637ae3138358966ee16f94b1307b3e17bf1cee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fecad364a3c56bdd52c2b583851d6ea5359e6b187f6923213dd81080a7a998b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824c87d906fc73b80310937982d370ad7d5af67a45d73feb5d7a209c632be5f9`  
		Last Modified: Tue, 04 Aug 2026 02:52:01 GMT  
		Size: 126.7 MB (126652394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a5ad10ca2c01a9273a7a015f2955e3e3016b4d03c83fc82ee498cebd9c85fa`  
		Last Modified: Tue, 04 Aug 2026 02:52:00 GMT  
		Size: 65.5 MB (65456046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c32a53faa6c4167316d22a8172eb3c4d5b1cec8d3d66be0967c4a46fd31944`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71c67bcebe2603916fcec544f7f84bb93e510837b10c85f48178f225026e34cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823795510815fd11ffbfb4468e19a27bc4b80ba29c2df9ad880c6577480f0db5`

```dockerfile
```

-	Layers:
	-	`sha256:efef67cca2131020327b2606caa816e54ae4771a26db9ffc8d79edb5f79ca17c`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dab02f26480df4076b0d9af40972a6ea3689f9edc30d3b83ee65f35f46a99dc`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
