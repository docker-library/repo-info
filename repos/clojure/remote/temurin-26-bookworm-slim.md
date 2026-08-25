## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:0bcc878259a8fadddea61d3aa492c32da5721fe189087b3f617e27e83c9a0844
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
$ docker pull clojure@sha256:bb6af77cd85fad231de59a789e954fabfb92792f9fb322f73dd3642c76a04825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189479295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7715bd201c948746f5f6efa34b91d5561934c2d4167c38151d07d83d0e853`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:05 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cb99358cf3ba6bd62499ff7d71eae6d9e84aacc06b232301bfab35ce354d72`  
		Last Modified: Tue, 25 Aug 2026 01:33:40 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b42be31d9a12722b1f7f1f8aae7a79beb1ea618cd1049b94132619b34e0a2a`  
		Last Modified: Tue, 25 Aug 2026 01:33:40 GMT  
		Size: 66.7 MB (66681855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b6e0fc74daeaf40708cc19a6b940e09dd515cb56a8a20af76ecf2c4529eec6`  
		Last Modified: Tue, 25 Aug 2026 01:33:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d48a5e3a294a0246716dfa7bcaed3e15ba397d0b1935ffc90c8fbb466966baf`  
		Last Modified: Tue, 25 Aug 2026 01:33:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b744780310f1b5aa17c3b8ef6f924faf282db28f8da117930bcf33f5cc723fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949d8033265ef861f70f53d836cd0d7ea56a1cae523d2444c6c995c7c34ae30a`

```dockerfile
```

-	Layers:
	-	`sha256:29327f2f6891ca8df378ada02c0b2980b896bc3287543ca9908941e5e8b4898e`  
		Last Modified: Tue, 25 Aug 2026 01:33:37 GMT  
		Size: 5.1 MB (5084131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d08de4ad603b872bde0c140fd559b449d26e1ebb2ec0ed0ab56299e304389e61`  
		Last Modified: Tue, 25 Aug 2026 01:33:37 GMT  
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
$ docker pull clojure@sha256:c39447f9e3b4c97a2f6a8697dc6b46ee2e716cde05039834e2e35279c09aafee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197925247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b4dcf88f6895e4e3c9b99605faadbaa0879a0569cf027bb736d9120d5fc836`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 23:09:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:09:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:09:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:09:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 23:09:46 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:19:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:19:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:19:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:19:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:19:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d179c6c1497082408a4ce761c498c8a84d8db049e15cda426dda506061179be`  
		Last Modified: Fri, 21 Aug 2026 23:12:55 GMT  
		Size: 93.4 MB (93350799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bd87bed0a7b25c85fa8f1bbc180b470da08ec4f7d67b845675edf2099df5d9`  
		Last Modified: Fri, 21 Aug 2026 23:19:46 GMT  
		Size: 72.5 MB (72497084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35fdf0af1aa32c3e8d802d0a2170a66ad4bf3dfc190cd96bf61f21af8736070`  
		Last Modified: Fri, 21 Aug 2026 23:19:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0ea4a91d31f6f9107f78ad38020cd79ae0399f4a98c5b07667536b7370c238`  
		Last Modified: Fri, 21 Aug 2026 23:19:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e84cfa2ba0c83ac63dbc8c8ac10dc67fc46fb32b2cee028eb483db51a950628e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b5579f62b84c49e2e8151a12a7fc47aa091d5fba0aa292aee4b093bfee6312`

```dockerfile
```

-	Layers:
	-	`sha256:eb2b122a594cc7556fde1805b2aa7c71c9c8797b48d5cfc473390da35b1a4296`  
		Last Modified: Fri, 21 Aug 2026 23:19:44 GMT  
		Size: 5.1 MB (5073225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1db3cbec1cf21195c19db192fef4338719efd53b55deb48888fd5bfc5f0c179`  
		Last Modified: Fri, 21 Aug 2026 23:19:44 GMT  
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
