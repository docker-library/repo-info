## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:307ab9ecccbcd6301c991fe28d875ea03bdbc0f9609974716585dfc4e65b599d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:bedff1654e35514288c4948bea24e8934c8bf8fad9cbe5079e02b99f33084078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284813352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f31247f39e6b82b017b2f3dfefb108c979ba1414449778bbef7e6ba52685c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:47:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:10 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5531174430d5b053dd907e553ea732f6c287f0d85f31829f02af757d5e8d52`  
		Last Modified: Fri, 02 Oct 2026 02:47:49 GMT  
		Size: 158.1 MB (158117501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60ff94ea9f218d8c90cb6dd4f02e29f35d9c23b5c2019c0925508fa4beabf21`  
		Last Modified: Fri, 02 Oct 2026 02:47:48 GMT  
		Size: 78.2 MB (78191369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3302c83bded1c8dea0a277de56ecebbdccc610f312d62ac932cbcb418a43f7`  
		Last Modified: Fri, 02 Oct 2026 02:47:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580b3cfe2236664f8e1070ad030ba740a314eb0dd2c2ed1702fb07f90422d94f`  
		Last Modified: Fri, 02 Oct 2026 02:47:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:31a89cf192e44c53a24a254d7d25df059fe94af3a4b08850026fd5373d698444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e90a44537000a4321e20266ae4c08f2e50ee2e65367201c88a08a9ec68d461a`

```dockerfile
```

-	Layers:
	-	`sha256:2236766aebb54369f6e7ce32196d87f140e0357f2192ebbb45b3eb4710e91c3c`  
		Last Modified: Fri, 02 Oct 2026 02:47:45 GMT  
		Size: 7.4 MB (7383176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7009728100f894ae03fe6c8542d64a23c74d4a1b26ed3bcb2cfd3eea2b94a2fc`  
		Last Modified: Fri, 02 Oct 2026 02:47:44 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d990d17c23d011d344b1a624dc413eec36995cb1068e555708d1f8968790d410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282966065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194bda454f08270e3cb8683b792c36305e12767b0075d27aa449ee362491db6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:47:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:10 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d16700e2e627050d4179fb5dbfdf42fb52731301dbe394007fe73a8745d1727`  
		Last Modified: Fri, 02 Oct 2026 02:47:50 GMT  
		Size: 156.4 MB (156400657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79c8eab1679d00f37d2e1201dd4bd7a23986daa8aac2f41510a2d333b41435b`  
		Last Modified: Fri, 02 Oct 2026 02:47:49 GMT  
		Size: 78.2 MB (78174458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612f26f96a0a46175e193e1fe479c62d8851076ccd7daed0884387dcef6875f3`  
		Last Modified: Fri, 02 Oct 2026 02:47:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782c4fe9b853aab07ae998086d0b54bc010faa8ac882c5ff58385065c89bbf74`  
		Last Modified: Fri, 02 Oct 2026 02:47:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6811822327cfc9d29d477c0409788f0b778cbb535c4832244b517068b0486542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d018c870990d791eec621c453d6b72f1343aaab268c8b3f7119cc40f2db04acb`

```dockerfile
```

-	Layers:
	-	`sha256:37b82d757f077a658c91263785829689dbcdf420b291c154182d8bc6214a437d`  
		Last Modified: Fri, 02 Oct 2026 02:47:46 GMT  
		Size: 7.4 MB (7388963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba7c73b17ab5303c945d6a28e68fdd9ac33cd66371088edc5df011edcea67170`  
		Last Modified: Fri, 02 Oct 2026 02:47:46 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:45f654c176d110e8572a69f448b27201f3a235c8751446aeae1cdc7547d04d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294625898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d80a47fc18508e99c34cc80c739add2460a4b57636140a0ab59b9041a6fcd6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:50:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:50:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:50:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:50:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:09:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:09:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:09:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:09:53 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:09:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb6bf326805d33db5f2eeb52843cedf33600a8cff5a57e18937a394c05f6f08`  
		Last Modified: Sat, 26 Sep 2026 04:53:55 GMT  
		Size: 158.3 MB (158282667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33134a53623912a483f7953f87bc8536d9fc9b66b9e6e57d965c38a343670c57`  
		Last Modified: Sat, 26 Sep 2026 05:10:31 GMT  
		Size: 84.0 MB (83992888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d012664ee61b64b886772ccd14938d70c8d50c4b96a25cf91360a15f9d2f59cb`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e8e97ddc4c3e28f37489336470d313507b6a50e740f311df7f1ef862156941`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:06545c54d67e63f506695d08d7e2402bcd39855c11a0951548e0ca4865e97174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d1fcad181f1dba9819aeee356a40904bbf458272e1b2250ddcd35e8eeebd5`

```dockerfile
```

-	Layers:
	-	`sha256:31f3b57e1fa111fc9d965bbe341e5d310d94f79ee6b5a3f4f28fd9b273e84f88`  
		Last Modified: Sat, 26 Sep 2026 05:10:29 GMT  
		Size: 7.4 MB (7388402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7587745e042ca65de943146dca7d0e7693d661dd59819d656b443ca0739cf855`  
		Last Modified: Sat, 26 Sep 2026 05:10:28 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
