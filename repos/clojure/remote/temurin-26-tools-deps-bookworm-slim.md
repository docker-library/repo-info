## `clojure:temurin-26-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:ab91392935aac147beff5e6e5e3f1ba2cd4aa433b9c1a913687c762c6727b245
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

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:aa6a9678401ed857354994adb5ee6ff906a668f8228f4a90de1fdfed4d6f89e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189415300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e617037cefcc7ebf9cc9810fa2e49b4ce6d47e630bb11e3c49bd10c20f3c5f95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:26:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3686f2c32ce5f268b3188c64494dc3b68d8cb1b2f93a0aa91ebe6350ce40e355`  
		Last Modified: Wed, 05 Aug 2026 01:26:44 GMT  
		Size: 94.5 MB (94524353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d866a5d7d3efb598ad00507c4f81419fb4219edec1592c655185cfa7bc4d98`  
		Last Modified: Wed, 05 Aug 2026 01:26:43 GMT  
		Size: 66.7 MB (66657316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07503e959f6dc23b49e512e2da7bc584473ae06712303c78d52e2cf0b86ebf27`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2b82ac4c44b2e3ca53aaea86f66819684305a41b1cb3820be4381751c745aa`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ee5d6c3f5c11595cdb8318e75fec1ed4fb0a24ee2468bec352ef0e58ae7169d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d8d91e615d3669fc740de8df360c0d5ef629f05a180a4df6803b14ff915387`

```dockerfile
```

-	Layers:
	-	`sha256:844424caf755ab3534a18576db352d06a8cb93ee1e230f77cc9ab9d328cd939b`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 5.1 MB (5078926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ada540145469d05298edb48b875e8ec9d12954ff7fb4216794c605c5b736dd7f`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 16.0 KB (15981 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc21db97f5f31ddc0d7856c070e85f1a1a21aa06701e015b493ca87f6b47a015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188271038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3906f9aa5e85057ac9feb058499d05e339c1ac46ddeef35ce1a9ef60bf31e95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:32:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:32:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:32:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:32:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:32:10 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:32:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:32:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90334d57880a85ed8371641b9a793e800bfb10b185a5f2a26bfe4db2dc511033`  
		Last Modified: Wed, 05 Aug 2026 01:32:45 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48dd5cb4b52e07dd692983e7f23ba5f482f1d329c0d44bbf73b11412df4bfed6`  
		Last Modified: Wed, 05 Aug 2026 01:32:44 GMT  
		Size: 66.6 MB (66648453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a70260670bed53d15267cc0c5f1224b18b3267eba6588c1198c773f29afc3`  
		Last Modified: Wed, 05 Aug 2026 01:32:42 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae9035890e4f6311cf0910670abf9da032429b27d8678903d5c2ccf6998f127`  
		Last Modified: Wed, 05 Aug 2026 01:32:42 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c5ae412b9ab7a61bfe78268511c47d33523248aeeeaaeb08a8cf05f5c95ae192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1770d684f1d47af30c13e12ba7b2efa8f87ff9fc6be62cbe9a7ef7bb449c396`

```dockerfile
```

-	Layers:
	-	`sha256:34b3b356c7aea8879ee507f88cda8f7ab94577181b08cde818029f6ba5a91afc`  
		Last Modified: Wed, 05 Aug 2026 01:32:42 GMT  
		Size: 5.1 MB (5084684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1b8743d9c36faaa6b9a76349f7c65abb2a7d6a5b2cb508b5251ef3266a0263`  
		Last Modified: Wed, 05 Aug 2026 01:32:42 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:78930e0fee5e3dd05c0f2602e5d5ab4f81bf0b40cfc38eee814bf25e7ec2a797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198466573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a672e02fa02d5e9e2ec64cce1b379546f347f7cea98ec72e551aabf9560e30`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:44:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:44:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:48:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:48:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:48:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a4afed690d95682effdb883fbd3eb1aed486e270763f40a0bf7cfc2990345`  
		Last Modified: Wed, 05 Aug 2026 03:47:26 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd058d8f464ae94eb910edadd9049c53167c18b044a6cfceac3e9b84d887b135`  
		Last Modified: Wed, 05 Aug 2026 03:49:09 GMT  
		Size: 72.5 MB (72487152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec18e66b67f1c7a3baac5d54c51f3be659187a0aee8f2226153d6b89cb00ba1a`  
		Last Modified: Wed, 05 Aug 2026 03:49:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1226de1832f00250927a1625533ac20934f15d0094ad30ac826a2863c1d9e36b`  
		Last Modified: Wed, 05 Aug 2026 03:49:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8d95c6513f2aafd5404f43b9bd7878735259c89e597708aec3b61b1fe15f3743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03525f47e6c9f31027d675c74952d953b27a616acd99b96bb5b954513c262701`

```dockerfile
```

-	Layers:
	-	`sha256:940c9e510227903694183f84a44e4811c1d355b6f9c41364de2abda7b90782d7`  
		Last Modified: Wed, 05 Aug 2026 03:49:07 GMT  
		Size: 5.1 MB (5068020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9149bffb3bf313f0376662a153cdfbda6a2b6d54815bd84f0689224a2957bbe`  
		Last Modified: Wed, 05 Aug 2026 03:49:06 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; s390x

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

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

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
