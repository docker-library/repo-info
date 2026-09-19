## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:3baa207e14be7d9526bdf6cd517f5337942a0b34588ca66f9bae70f19f7c6fbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bec7e27e841f0b1a4bab1b45f398b226170e9b87864d85a20ab2e31c26a52f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230436796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f117dbfefe0e1fde65c15730b72f7d21e0e6a0111b1a54ad651f971d554bf923`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5dd334626fe94e5480ce68948c814ed857ef6aae0eb16f3c9df00081e20446c`  
		Last Modified: Wed, 16 Sep 2026 04:38:12 GMT  
		Size: 92.6 MB (92615107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6d73742e7349ea1ea63115fcfa12b120c75084ee49335ac29eae418803dfbd`  
		Last Modified: Wed, 16 Sep 2026 04:38:11 GMT  
		Size: 88.5 MB (88482819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900c4912acb07451894e90ac79cae2b7c6076120f5d047a0e851055c8ffe7466`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40a3a6a3b06eb23050b0384cb6218205b4d3a75f49bac93b5ed786ad57b331`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e7931e08ec3e58bf56f50d31a8f125dec7038b4b2f7e0d63590b8a1ff4f8ce30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0da27f2224348ac2360bc3522e18a154787b652b9586b093ea0c5a635363e69`

```dockerfile
```

-	Layers:
	-	`sha256:76e46cda0b4cf99cacd7583d1fdcac9109ab44e1e94ca8c2d89ee2b6194da501`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 7.4 MB (7442005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c85a095ae0a20953e0d72bfc96feacf627fde35d30cdf0d519db7412419bf99`  
		Last Modified: Wed, 16 Sep 2026 04:38:08 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:24d885e37ce841d6691e319fce54f6ac80b351eeeaa6e7960708586f178adbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223671375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ef83ee4b7395a3bce3a82c78622c3e91a4423b885d716ef48523b7c2250b15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:24:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:24:40 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:24:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:24:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:57 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da492f8ef794788ebf1f002ee463170e7fecea8a8e5aa79c6f6bbd8a0b1ce2c`  
		Last Modified: Sat, 19 Sep 2026 01:25:19 GMT  
		Size: 91.5 MB (91532237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e13352c1eaca1140e4b9657271797533afe392fd2a417ceb02aeedb9b2d2f6`  
		Last Modified: Sat, 19 Sep 2026 01:25:18 GMT  
		Size: 82.4 MB (82389263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016cdd4b03d4f24cc3fa8cec6cd55baf16bd9cfb2bbe7d412701ef5d4b59e671`  
		Last Modified: Sat, 19 Sep 2026 01:25:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb2dc82ff4d422569855c2f44d8c063139c8fc2ac7f360da05f461b6487d37f`  
		Last Modified: Sat, 19 Sep 2026 01:25:15 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:039ca367ab32232bc59e177079d09b7a9a5d13ba6e5a5176398089893a14bc58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77bb5c3874422b3cc125363acb1a2241a5591e262c0783e44452e74bbe4673b`

```dockerfile
```

-	Layers:
	-	`sha256:ce796bf06e21ec54cc8706b6bb6f7f79983a951c3b6d2105ca3ec94b18c97189`  
		Last Modified: Sat, 19 Sep 2026 01:25:16 GMT  
		Size: 7.5 MB (7453290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac232485bc0cdc476bedc1a942ee88e3703b2e6d40b1ea73b7d9c0352190c82`  
		Last Modified: Sat, 19 Sep 2026 01:25:15 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a2b37564a6da52e39d02c3f47e5792d7b486d60f035f1a1b087bcdb5aaa87d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236137863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ab5d81215843b05f5225ac7ba48d2a85bd77b8d7b067ed3a4f2ef9574a1fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350bb3e20a6eebbcb50bc6e7db5f6555266da2bdebc038d0b390d8332fca1a9`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.7 MB (91716706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fe8f9b61e9a91d68834cb44983fcc62c76a6e35cbb6f5e88f520e020a7df7`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06379cc879a2aeb59f40fdb55741a089df2ce22bf05064b509a6400540913c8d`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3fadaa8734c178dce1ef98456b665005f2562deede3a1cd9828b2e5adb64793a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a147be5046d8de3e64bcb24918f692617ab77662f4d85e36a554fb9dda0c8d`

```dockerfile
```

-	Layers:
	-	`sha256:668f0d7b964bd87a8613e20074ed76a5967fa8b6a0fc86e1c5aff1d66c8c3470`  
		Last Modified: Wed, 16 Sep 2026 10:59:23 GMT  
		Size: 7.4 MB (7429678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b3f71e2dce6cf6dbf6050ba9c5b9b93066b6c9df887521a714674175110d39`  
		Last Modified: Wed, 16 Sep 2026 10:59:23 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
