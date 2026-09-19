## `clojure:tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:99a96f7a9133289ee19cbae4dbd78f644a7452c68d9313189266fff7a924e7a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b077187736a58cef27d75da89b1f4598a08f28532920516135735ca11c49c3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224562755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8348faaa8e9ae281957cbb3c7ba57bb090aaa5a0c178890c0c610c28f6249f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:17:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:17:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:17:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:39 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997a25143a6d077abb9af80d1f7f9e4598324346504052333a4b0a2e8727e1c3`  
		Last Modified: Sat, 19 Sep 2026 01:18:01 GMT  
		Size: 92.6 MB (92615129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a486e986e47e4c6be2ca7755ea7200c62b3fa023dba5809bcc739d9c4899f4a`  
		Last Modified: Sat, 19 Sep 2026 01:18:01 GMT  
		Size: 82.6 MB (82566889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd387ad709c0edb9c0069449c486d350d114f9bc1381e1ac3f815dd9b13421e2`  
		Last Modified: Sat, 19 Sep 2026 01:17:58 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733c7b10765af0a0a97a99db4618700e238027378858aab1ab4df5750e5f50a8`  
		Last Modified: Sat, 19 Sep 2026 01:17:57 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bb2245efa9e484c3533508d554925d9b45b1f9e133741e1ec44332edb346d462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5bf4e415d3a8afbb7b213ce7c1c5599c14db8037ed11cf8c193c8e26fab13bd`

```dockerfile
```

-	Layers:
	-	`sha256:787b630cffb2dd6b0cb2236307c8601965fddfe0f6da5a976ad5d14ecb29e1c7`  
		Last Modified: Sat, 19 Sep 2026 01:17:58 GMT  
		Size: 7.4 MB (7446876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2890f6657b8ebc8e59d14eca96e70aebc2b3cdbd279c7307bd785459f543d7`  
		Last Modified: Sat, 19 Sep 2026 01:17:57 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

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

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

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

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; ppc64le

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

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

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
