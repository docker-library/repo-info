## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:73d7e29788fccd9118cb9721c9292db7cb130e20d2f6852cb83ba6f7bef1fab9
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

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5eca40d90da91e958557985fce42957a978e671c224454151e0336a0c1a8d046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189479629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fbf3b42da37016e8037753ef6f3bbe1744cf89efe7dd9ae460687835637a92`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:23:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:23:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:23:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:23:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:23:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:55 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d017790e2830b311ed23270f7f6f6b81cf1ba8127f54cf1ec8455437e7e996f`  
		Last Modified: Fri, 21 Aug 2026 19:24:19 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17543eef65e751be78a9e92a7f0fd2da001f313292c8d48a5d4642baf452a7c`  
		Last Modified: Fri, 21 Aug 2026 19:24:19 GMT  
		Size: 66.7 MB (66682213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301acffad29ab89ae942dffe22fd9b9f8aefd6cb11e0273e85e05aca2fa8ee6d`  
		Last Modified: Fri, 21 Aug 2026 19:24:16 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad313c7cc0576227c347db02677fef4033e559811dc82a8b016e7e6469fc8a2a`  
		Last Modified: Fri, 21 Aug 2026 19:24:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:420dd969687d7d2ae5da8df584c3a416e7f31e3b09f439dca0638ebc1b8c0254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60030324704d3e1b208c272b84b4a38ebb6214823ae94b23a18e385086521321`

```dockerfile
```

-	Layers:
	-	`sha256:42eea105d724d8fcb1f052a47814f9c30a218ba80e2cb36b5147414a2ed68850`  
		Last Modified: Fri, 21 Aug 2026 19:24:16 GMT  
		Size: 5.1 MB (5084131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d127de33e6404941077faae106544b1d54db4381587a4f772e3648fbfd991d8`  
		Last Modified: Fri, 21 Aug 2026 19:24:16 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:022705db3cf15f7e43b5cc76cef97805216b99c4bcc7c2024f971a0485cf94d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188328360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f807819f3245abc965e99fe5811f063b8489b99da5ba4470d2b4797d4e83a30f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:45 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0085e4a019138c1c0d396b57318f30bb587714be50baadcd4b793090ca52896`  
		Last Modified: Fri, 21 Aug 2026 19:13:23 GMT  
		Size: 93.5 MB (93541549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b63c00c702afa0410116b7e569a9262a280e3eb1db55d8ac547321f9253ac5`  
		Last Modified: Fri, 21 Aug 2026 19:13:22 GMT  
		Size: 66.7 MB (66668568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289d4ec5bd2cf7a9a13d54f41af0a27c5e6153a020157e84da598f2e7b90745f`  
		Last Modified: Fri, 21 Aug 2026 19:13:19 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e8c3bca15552eec92d3a8e7be5daef9a115412e96e604ab99917acf278da7a`  
		Last Modified: Fri, 21 Aug 2026 19:13:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63f417b2a288b4e5d66e7a211ac24e145930228b6573ed9bfed85eaa0e51b0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5105990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500acea5ddff6302a77ee281aaa9bddd9b6de46ee8934121bf841968b36a5c2d`

```dockerfile
```

-	Layers:
	-	`sha256:17c6c2c9b57eb93c18cf7d0a71771b02a72cc6f9eeb38b52901d81989899c3c1`  
		Last Modified: Fri, 21 Aug 2026 19:13:19 GMT  
		Size: 5.1 MB (5089889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d961b2747cdde1fe8ebfd9bf25370e07058789b215c04ad62c4e79946caad382`  
		Last Modified: Fri, 21 Aug 2026 19:13:19 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0cdfa74739bb68843e2925e78b289472796c95c8747091b91443f7e3b820128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198476380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aba6ff08cd7c06aa071305c1bd5490b28ad4bc1651d5a5f8ef04a1bf74a9159`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:42:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:42:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:42:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:42:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:42:35 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:51:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:51:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:51:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:51:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:51:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6132815f1b95cd35c0709a89fe7d50e3b335a454584dd5908d7ecb843963ec`  
		Last Modified: Thu, 20 Aug 2026 01:45:49 GMT  
		Size: 93.9 MB (93902044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ed2b14afcc180bb11fd7d32896ec44c42738e663b1147ccdce3185a08ae1e9`  
		Last Modified: Thu, 20 Aug 2026 01:52:29 GMT  
		Size: 72.5 MB (72496973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43aa4dee5dad8efea07dd28db7bc5a43dfa551a80da28cddc21258500d4e8b9e`  
		Last Modified: Thu, 20 Aug 2026 01:52:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9f8af4eff92ad998366b554463eeafea6701bf6cce3114aa70fb79976189e7`  
		Last Modified: Thu, 20 Aug 2026 01:52:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9f4fc0e15034b1fa9a1f9946262442e6244289b9ff93527817bc218754c37601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374f9d874bb475db8b2d6f1ca6c647e1e89f048c09a3779c7bc5233cd39184d1`

```dockerfile
```

-	Layers:
	-	`sha256:e1f63cc0ddda00b84cae4c7e8df4f12017fc800f2e823b38557df1f80b45b4a9`  
		Last Modified: Thu, 20 Aug 2026 01:52:27 GMT  
		Size: 5.1 MB (5073223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a08525e1912edd66b9b11c0bb37a1f1956ec2c2c2e79ffb7bdeac927e5c3d66e`  
		Last Modified: Thu, 20 Aug 2026 01:52:27 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e94a82f8bc1a03c1d7e16738b66fedce3d4bef0fecd75bc50d481b8ab6c9997c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182882357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a073e3c448ec5c357531b018707bd366b9546eeeeb69ff9a1f45c56a77ba86b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:07:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:07:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:07:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:07:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:07:22 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:07:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a64070c97d7376ffb8de185b5dc3efacc69399de070caeedecbfb4b13cf55a0`  
		Last Modified: Tue, 04 Aug 2026 03:08:04 GMT  
		Size: 90.5 MB (90536947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fd6c71a1e37145251230037af4cb6cd86fbe00cf74fbd76dc1f912b97085e3`  
		Last Modified: Tue, 04 Aug 2026 03:08:04 GMT  
		Size: 65.5 MB (65456103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113dac7b65dd5ffba180c3b6cc6e22574cdda7a70cc7d79bc37cd0b709b1d775`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be28d35524ddc7e8419b848325877bfc9e46d98c903ec8d7143fec9113942e4`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:abc65f50e9ed5997df64cd9a2ea0390a4aead8c99270abcb9321a07a0080b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca96e6d30f46eacc95a1b2d65d7c6bb1a5623efdd6aa549aa563daf748f1a1`

```dockerfile
```

-	Layers:
	-	`sha256:355c68b72ebc3fd8fcaf220fb2670328753645122a62d7dd4c64f74e1eacbfc1`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 5.1 MB (5055433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18b573b58d9f8f532dcd430ced088a7f31d8681d06ffbf5abb5d5789a6d30345`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json
