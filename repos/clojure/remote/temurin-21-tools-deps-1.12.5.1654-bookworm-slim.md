## `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:e7d748c5011b67330a6f352e42eaa4f018403635a46760a30fd5bb09b6c4dc84
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

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c08098ddf15bb20a943aa6e8bc99701f4e689492a8d51e9fa4080c1730a5aff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253048482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7111ef72b9f79ea89eb47de3f1ef763d55d36d52d2fb4a022fc7131c89f832f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:20:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:20:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:20:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:20:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:20:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:20:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04939245f49511969a957a03a2fbf4e12aa2241ff5e9a06870ec2a152278950c`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 158.2 MB (158166914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb845a6c708561efc1cf7cd47c8e7136aced5652574e061d2ab57cf65b674159`  
		Last Modified: Tue, 14 Jul 2026 02:20:58 GMT  
		Size: 66.6 MB (66647887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c6831cce9b6669922c5bd45ba998705c04b04de6f4dae8d4b2266dd2d4eade`  
		Last Modified: Tue, 14 Jul 2026 02:20:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f9b43d11cf9dc38182f64d923ae8f77fb12796576e17825a8d1ff754c4a744`  
		Last Modified: Tue, 14 Jul 2026 02:20:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a3ccb923704f03fbd86041f5b8e5dad07b59e68bdc2480da92388b27b5a64cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265d3b66c5e60d17e1d46a43dffe729b77f68e9de8820b125b99c3386db55b42`

```dockerfile
```

-	Layers:
	-	`sha256:17f6c7381bc1f1e62860145a89c5e5222978628345002f46499d7b697f63131d`  
		Last Modified: Tue, 14 Jul 2026 02:20:56 GMT  
		Size: 5.1 MB (5115887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01daed52863a87ffe6395c55c21cdb85b2b8e41c61ab3186c733e9ba639b9a5f`  
		Last Modified: Tue, 14 Jul 2026 02:20:55 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a3ebccd2d36a5ea298e7094a59ada9493a59660b4533979334df00415940950f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251217607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6149e0f6e972b0d43c493f9d1be8888d1ead797d2510b31be1be4479bbdd5ef2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:27:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:27:32 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:27:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:27:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54c4734a4b440de0cdf4457e324bad856536aa7501231379190024dd23eece5`  
		Last Modified: Tue, 14 Jul 2026 02:28:10 GMT  
		Size: 156.5 MB (156461287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d3470e798215fa755b45965565271e533d7198e9d1f420673061fe4721cfb3`  
		Last Modified: Tue, 14 Jul 2026 02:28:08 GMT  
		Size: 66.6 MB (66638025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af6b00560aa6a88b5d19e1665e5f26343a9c928cbb5049c77c6e5d8cd876fcf`  
		Last Modified: Tue, 14 Jul 2026 02:28:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7b2343bd08cb528f05c13844f9e32940791291d32aa3124a6062504e1bd88`  
		Last Modified: Tue, 14 Jul 2026 02:28:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8ceaffc6ec8e68e8fcde4fee6e65e02eddd62e8e6819afa915cf8a1921e54a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf76d5b73737a8d1a559c704dddfbd9986594e17ff9ff467c6f6b47f9a1a6c8e`

```dockerfile
```

-	Layers:
	-	`sha256:d90d048452332605099df491cd75529ee71ac363cc0fe0139c62e4543165549d`  
		Last Modified: Tue, 14 Jul 2026 02:28:06 GMT  
		Size: 5.1 MB (5121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:729639d9e339b75e842292b80729a9ed718c8c68aa4f192de14e721eb15b25f3`  
		Last Modified: Tue, 14 Jul 2026 02:28:05 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdb2176a440ce82937a0a5c203cda1cebbd406c48d231f47df8bf0a46d04829c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262902386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cedf923292932f9db5eb5dfa71ed8b59d72060763cc71071b8779f33f4bae7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:20:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:20:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:20:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:20:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:20:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:30:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:30:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b861214dad2496c9c76eb0b9e1e549b841c66aa96200b4bdf05f7b1514a0a985`  
		Last Modified: Thu, 02 Jul 2026 07:23:55 GMT  
		Size: 158.3 MB (158343255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33774e76bb30d7665e9a7541e0397d5d04937a9240274db85e121e599fe5e2c9`  
		Last Modified: Thu, 02 Jul 2026 07:31:26 GMT  
		Size: 72.5 MB (72476112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05784abbf636b964118ce9dcb77f26ee8131696e91150848242e99be998de5f`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98806cf123e5643faa903e2ad5ea6887b39b08076ec2cdaa6046500775e742f4`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9e097e0bcacf32638a75da0172c8d7de5e753a5f1aaf2b792a4966c612f0f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b536a2c3ad389c5e5d90b949f9c5ab6758573a23c28eec90eb212a86a2ad0`

```dockerfile
```

-	Layers:
	-	`sha256:6dd0ce96b64198cda17f6011ff945b96221bf8c29340c88ad07829768198ec99`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 5.1 MB (5121009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce14231137906b757b2a5d011b8a7d49a8a0fbd576d366433f466e32ec48379`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b50ca7a221a5026e4eaac583eb35a4939a6eab1eccd30d59566f613381970a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239726562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7780e1a912e2ab6dea63d2769ac75546243155af7a30e3b29cd273ee924`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:30:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:30:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:30:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:30:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:30:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:33:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:33:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:33:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:33:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:33:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a100d2c7f7cfa5f96918a276786122767bdb7eed1543d7f6165007a5ca40bb2e`  
		Last Modified: Tue, 14 Jul 2026 04:32:31 GMT  
		Size: 147.4 MB (147388340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf605208b0fdc24557bd5fb91d4165d095964abf802e2786a3f08bcd747456d7`  
		Last Modified: Tue, 14 Jul 2026 04:33:23 GMT  
		Size: 65.4 MB (65448914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5345da8fbf1a8210707de8fcdc8a15557f01cb28044e4a48e3b9458db285fa`  
		Last Modified: Tue, 14 Jul 2026 04:33:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04e62da36f4d8d0a363110e4d739265ca4476597197b15076f31630c37e2e74`  
		Last Modified: Tue, 14 Jul 2026 04:33:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f861a654944793282fc278bef87c08a00ca2986215b7d79a5655df8d45a08e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf21b720d481dfae546f905bed25e938aa2f81ab2b511292b490e4e5856425bc`

```dockerfile
```

-	Layers:
	-	`sha256:3be18ca7c52706eda699ebb03abef43f4e6adf7c2930341733ecb179e287dad9`  
		Last Modified: Tue, 14 Jul 2026 04:33:21 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4de0ccd2fad7f12b7f66d15a3d99af23d4635292e8277b64dd4ec0398691d15`  
		Last Modified: Tue, 14 Jul 2026 04:33:21 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
