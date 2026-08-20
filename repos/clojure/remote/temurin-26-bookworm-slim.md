## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:d2200448b4bd728e357a6abcf7c96aeb571778f508b860f4bafcd9b2898f87e0
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
$ docker pull clojure@sha256:e5b94b8832ada0e4f60b14c8d43d4c67152f1fbaabd1da0dccd092273b596d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189439767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c849c290c79103ae18074f3768b73b0a780508cba40dc57f63ed9f416a07dfea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:50:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:50:23 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:50:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:50:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0d279964d3f93f968449a80ec89abdc6ace6cbf0c541d7bc9c9c8d03386a60`  
		Last Modified: Tue, 18 Aug 2026 20:50:54 GMT  
		Size: 94.5 MB (94524365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071960c79d52c1abba8a50df9b59726573fe52917ed50946e03af7295a825694`  
		Last Modified: Tue, 18 Aug 2026 20:50:54 GMT  
		Size: 66.7 MB (66681770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9631ad25ad3ac74e8053c752e073d8c1734e799375c5aea09e134805d03ff3b8`  
		Last Modified: Tue, 18 Aug 2026 20:50:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce5b1fbda36359f9dd10bf09f44766be96daf6249a5b002699e8887aa07dedc`  
		Last Modified: Tue, 18 Aug 2026 20:50:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b4e603187d49a94e9dd551c1fdcfac13563cc15423e5ce4d3ea3b1eb0f01887f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3422cfc4b73abbe9f5c8c1b50bc13cd12372c0d1f2c6f8fabf52429487af1bf`

```dockerfile
```

-	Layers:
	-	`sha256:9656ec76646099eed5f7aca5dcd69470db37d1f4511c97521ba69d3eac7a8612`  
		Last Modified: Tue, 18 Aug 2026 20:50:51 GMT  
		Size: 5.1 MB (5084129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:579c3e50b566af265c602c51b5dde60eec5f44c39435d37ecd8aa441acc52b25`  
		Last Modified: Tue, 18 Aug 2026 20:50:51 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:93ecf38b524792b0e214ea8d4e610742dd2c7cc269a1f84da2d6d9e67b07fa24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188291721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab083db711fbc536434d325f30b7eb73957ae42050500e31c029ec7b608737c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:50:09 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:50:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:50:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcf0e32f2ae789b63ec5abbfdf1003296abc2598767993c980c2254c05fa661`  
		Last Modified: Tue, 18 Aug 2026 20:50:45 GMT  
		Size: 93.5 MB (93504350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb15052e4be98d4a94a3b3e528ee8b89a83c6d1f6d8731f5ed9fb9b82657f21e`  
		Last Modified: Tue, 18 Aug 2026 20:50:45 GMT  
		Size: 66.7 MB (66669129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b36d579e148577cd1d10caf4526040fc29633232edd72459dd602fed1ead71`  
		Last Modified: Tue, 18 Aug 2026 20:50:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415d95b5e323577608cbcf1784c4ad730eae15664281eb190fece0f6625615a9`  
		Last Modified: Tue, 18 Aug 2026 20:50:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:df334fe3bb6f363fb7447bd9c7725eaae73ff7c1cde30c01434abbee73023784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5105988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa350a4426f232d9bd98f946538cda17dc50703db11c712a15153f71d62dcd5`

```dockerfile
```

-	Layers:
	-	`sha256:ef0c4ff48f76df8c88d87854f6110ee43c774f1dca6db258bcafdbe5216378d6`  
		Last Modified: Tue, 18 Aug 2026 20:50:42 GMT  
		Size: 5.1 MB (5089887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4445221b6064ea1509b0eb4e64cc985c36f8833d89a8614e24c2bea4a9e4425`  
		Last Modified: Tue, 18 Aug 2026 20:50:42 GMT  
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
