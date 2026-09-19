## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:7c16cdd4a086f1e87aa7209f19892e7aa90905dabfbfd989e344715b6d3b6175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

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

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8870386f8eaed93e8cb21185d7162672c4e0665e0af0b10376a0276748281b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232442346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea849d6d614c2d1a260065cb87e8c659f8ae493c6ad0f8799cad76752e1071aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:15:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:23:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:23:49 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:23:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e95fc9c7d0c89df3d3a2d12f1bde2c70dbb64d136f858732aabae2980ff715`  
		Last Modified: Sat, 19 Sep 2026 08:19:11 GMT  
		Size: 91.3 MB (91255826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6e0c11563bccb3803ed44cae87553d136160ddd6a8c5e3c31704d477bed115`  
		Last Modified: Sat, 19 Sep 2026 08:24:27 GMT  
		Size: 88.0 MB (87990404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855d8c55108336e27e1da9114fc83e67025cdba94f3053f7f3f06b24eba05700`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9860b178e3b728160c26824456de5fd476194fa38af89d464a0b77cfcf9f7ee`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:564703b4a7ac272300b6b09c93a39cc371035161430a6ffbfe278b0d37f3c948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3517cb9823554ad1b444da756fe255cc1c8bd7d82dd3f22ca3fb57ef13b2c155`

```dockerfile
```

-	Layers:
	-	`sha256:72f6aebb80300f722c60a6a8157612e1ce216bc4e776a4f2fd314366a41d08f1`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 7.4 MB (7434619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e361466531400fcd52204baac556ab3d55eaaee407f90277b892b957365622b2`  
		Last Modified: Sat, 19 Sep 2026 08:24:24 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
