## `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:9163cd3b34aa911dd61d4ec028ea437cd105c332d6021de288dbcad161662492
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

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d29f5a4e0333f35a064cacc826a3682fca2336fe9e751d55316cd86af4fefc70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221225692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cfa862f9edf2c698bcb712e56e00ce8b7f599878b61a5cb08f55d3ba32d0ecd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:23:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:23:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:23:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:23:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:50 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6716ee90eb8dac52f823588e5feda3c3ed0fe2f56b0b49dcfac5ce9c0116eed`  
		Last Modified: Fri, 21 Aug 2026 19:24:29 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2c567f94ec253083021454ff8e26d2539b489cfa77cb22913e6dd76d8739b0`  
		Last Modified: Fri, 21 Aug 2026 19:24:28 GMT  
		Size: 78.2 MB (78163777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a23a0696eaa101f5abfe565091d41a61c9532eb2131930f31df3e76859940a`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76590aa4b9d75dc435190f43e78bd866de0bee5f7710e6d6ce212df36a4ef142`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1a4dfa5b8a5324445533c8d56099c67c53214b208b813e7aa5fa971650e69fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2d56726c47c8689cf69e34600673bc1286cbb5d5bafad5917bb8cfd66f5e4e`

```dockerfile
```

-	Layers:
	-	`sha256:f6ba6d0ae3e2e08b042c3d4c0474b9c9defb2450319f73a62b4890927e3d3433`  
		Last Modified: Fri, 21 Aug 2026 19:24:26 GMT  
		Size: 7.3 MB (7346950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45f529e9939128bc05213e6f21ff8784c3a6908b20652568ea20f0d27ae2fc6a`  
		Last Modified: Fri, 21 Aug 2026 19:24:25 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c7e6f6e52253b9c16b5e9b9c3aa02672a68b8e826dd523d9e9ad611c6b8ddd05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220072520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5ec0504b2de6655951b13b13ab5b80ec2a998bc91fd60db8a0efad0d7753ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:37:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:37:03 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:37:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:37:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:37:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:37:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:37:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d9f4d6dfe6fd244cb0f643f73da1b57685bd30dbff284ab0fa03296c340e3c`  
		Last Modified: Tue, 25 Aug 2026 01:37:45 GMT  
		Size: 93.5 MB (93541530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1af686748b87f593bb270e8c4014d9134b12c4d67f1bb8e704461fc569deb2`  
		Last Modified: Tue, 25 Aug 2026 01:37:45 GMT  
		Size: 78.1 MB (78146300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19298a112bd763726796eb4a5ff5b1cffc17873e6909fcab5cf089e4bf7e0309`  
		Last Modified: Tue, 25 Aug 2026 01:37:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02556748c48c93e924e870da37aa96aeebf371595533572ebf817ef2049a8172`  
		Last Modified: Tue, 25 Aug 2026 01:37:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7d42e1962307155c8f3d27d0a85920789f88504a83f149b4de5331cc57cd633f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254af1a69d305f9de3b1d9404ccbd4fe7d3f4aadd1e1bfb3b867ee162f3d7011`

```dockerfile
```

-	Layers:
	-	`sha256:459fa8119cb0d8531ac03b097b1f1efaf10bee6c3e906965829ebec7fa12bafb`  
		Last Modified: Tue, 25 Aug 2026 01:37:42 GMT  
		Size: 7.4 MB (7352734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2c29df3f2f2401fea87b84b572c9dd3eb02082cb7eae4dcad1a335188c9f7a`  
		Last Modified: Tue, 25 Aug 2026 01:37:41 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3574026d4433fb3a44cf3f5b40aa803bff3c1f91c02420af692850b3a51b6aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229672364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903218ac463f4da1f716862d15ba199475f6b0861c5c3ed60c8bb8cae7f348a4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 23:08:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:08:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:08:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:08:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 23:08:29 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:17:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:17:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:17:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:17:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:17:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b5d52d93abf67c1d048367fb921e16ebe68ba4bef7cc829fa16533087fed4a`  
		Last Modified: Fri, 21 Aug 2026 23:11:53 GMT  
		Size: 93.4 MB (93350777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78654a39020bc2a5778639a4238731ee22cd8904be9f51112488301cb3d69456`  
		Last Modified: Fri, 21 Aug 2026 23:18:23 GMT  
		Size: 84.0 MB (83979065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89f2d4e0645813c211ae5b18f30b42b2038a2d8c3bb776b5d6e14fc96bad83b`  
		Last Modified: Fri, 21 Aug 2026 23:18:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75e6833a085eac4afa236707ed9e52a9d088ecfcb3c8bcbaba6959f8c093f92`  
		Last Modified: Fri, 21 Aug 2026 23:18:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7020c6d1eb541e0f023155045859d50459d42b791884197840ae9430d5875559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc2952a3a4863ccec989ba746ba10cef48fdb9ace45ab222ddaf5268caaafa`

```dockerfile
```

-	Layers:
	-	`sha256:8968efe54f7f4cec752450d5cbd310ae678a9a3493c4ccb6b2e39a4774f31911`  
		Last Modified: Fri, 21 Aug 2026 23:18:21 GMT  
		Size: 7.3 MB (7336114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:739cc56adc132a68aa116ae3f849941a4c1f24919fae912b0226ba72ee993c09`  
		Last Modified: Fri, 21 Aug 2026 23:18:21 GMT  
		Size: 16.7 KB (16668 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:74ae15e8d49d10da3142bf8d8429bf3350f31e76d66c46fd77d8e9dd8813efdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214631214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8108825d2b7921275a8911b8724a8ab7e8825ce8abe0ccc18283b00111648c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:04:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:07:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b100b02d9fadd7ef6d3dd60d05e61617db916a5b1014ba714029c6f60cb0a65`  
		Last Modified: Tue, 04 Aug 2026 03:06:19 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fe1a26221451faf85d366131c3715ec502167ce932f03f242a4ad415ba4b36`  
		Last Modified: Tue, 04 Aug 2026 03:07:37 GMT  
		Size: 76.9 MB (76935903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c1b284be461c062a53a2373e53b33038908cabed6be4680cbea09ccf939c9c`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aab8806dcf55470a7d4830792b807f09cb9d10bf5e3ae9066a467396e9d4cc`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3136f56fde3b66405f631033db38556995cb1a5ff0856cb84aa536e77d06ed7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed649ce11ecb82bd2c8705ed2de67b0726bc883407ff2f76c7a129953c56fcc`

```dockerfile
```

-	Layers:
	-	`sha256:07bd0f9c34f83b0f624f34bd18b780318cd1ad03b38cc3ba74857769b80d60b3`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 7.3 MB (7318250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439adc531cb70784f177fdce81a4a9c76534ff9cf43f25388467a27a77ad7259`  
		Last Modified: Tue, 04 Aug 2026 03:07:36 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json
