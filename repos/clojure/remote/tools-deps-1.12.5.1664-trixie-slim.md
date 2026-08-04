## `clojure:tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:9ed6a383e6cec4e8e2f2782ecad294d05f805d3339cb81ee95ece181d58c7e5d
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

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:836b53f3c617e8e61f25499653023abe6cb8a08861994e63f765a20d067192df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191321462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1821dcaccf82fa93b874995d92b25d56e4ce75e0408d8dcf0a7d9859887306ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:55:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:00 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be54480a8197653531fe2250d12d20952a3afaab2aa160a21ee7f8d37eb60ced`  
		Last Modified: Tue, 04 Aug 2026 02:55:36 GMT  
		Size: 92.6 MB (92574614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ccca3ea460cd22232aa039d89a1789edf00d44422370a235a9df419a2bc9f59`  
		Last Modified: Tue, 04 Aug 2026 02:55:35 GMT  
		Size: 69.0 MB (68964899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb40372e455cf364e09cd0f99d3db3b144ef2b8e19cf12efd2a5b8910979f02`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efda76b376e7cba2300124ff8416274683eeab4c8233300a4e9b06de0af9f036`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6014aec86e78497f94beb98f1c9ff6eaab664d872c3ed74e7304c8252d5ebf2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0dc8b1526ff1dc6a5a3cb94dc3fb6bafa9541b57c97ac926ea01bede8272262`

```dockerfile
```

-	Layers:
	-	`sha256:6645e67b9357d3f0e615357fde4b30255e4868e7ebf536e3a7defa60a334838b`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 5.2 MB (5225446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77f348389adde4e97c944d9fdb71ff5ae66ac26911d88f5792f81011375b039b`  
		Last Modified: Tue, 04 Aug 2026 02:55:32 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8fea8cbe065a4ac4f2a2c1bf62add7a6feca45164215f73328d9df02d042daed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190473234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72acbc1ab81dbd71a5d9621f83ed702107058d6d2dd5ba9d9498289644291534`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:20 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61041a236b14d6695eae6b414b7a345247529ed99110d333478cbcb527547aa`  
		Last Modified: Tue, 04 Aug 2026 02:28:29 GMT  
		Size: 91.5 MB (91542245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c24b14ea3277de8376184e6d97a79ab15c72c4632dc3fa053e309d26820251d5`  
		Last Modified: Tue, 04 Aug 2026 02:55:59 GMT  
		Size: 68.8 MB (68786245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b1825f4fb224dc1d4c99ec7a4185b3e92c1e9d9956acd2bb7e24718e92e077`  
		Last Modified: Tue, 04 Aug 2026 02:55:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d93a0766163d1ca990eec6982adc81064e060b38a0901bf4fa0d993afa82c4`  
		Last Modified: Tue, 04 Aug 2026 02:55:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3bbdd849ed8fae357c2747407d1e7cb552d7c8119774499c8c1a51add15ff6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b664b37818128836ae8f065b377ee4f6d578c49c7b0e6fd66acce130fecacb`

```dockerfile
```

-	Layers:
	-	`sha256:56ca1db6790cf9830f11c42bf76d8b0bf54ecf470085e6e0fad2a0c35e9b9e59`  
		Last Modified: Tue, 04 Aug 2026 02:55:57 GMT  
		Size: 5.2 MB (5231228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0462369c9db85f2f369e8be31115ed0d4f7952fddd4e3f271360e8f263861360`  
		Last Modified: Tue, 04 Aug 2026 02:55:57 GMT  
		Size: 15.8 KB (15836 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e158a269234a387e72ee994ac2a896cf80df64851207047463a0df9bf2254fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199899948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1862c5ca5d64955d9d0d4d321f5321a94866bde5c145cb4e70a1d2a093e3e67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:16:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:16:02 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:16:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:16:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef67352efa9ab94f731c0a64e368bfe2a40e15ef8dfb0e43e0d40f006b93b9`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59575c20b8292bd66c0890bc2af801cb697a5922b97405098cfc4d736fd661a5`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 74.4 MB (74383387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970afa49de4a186d8641d80a8fec5b4546acd6c0d1ac6935c022bb8eb5e4c9cf`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c592519acbcec864fd6e416774ec1af6e16a55ec3f695d9193564363996063b`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8870c521a81573f960e65c2dd744ba61024266de2912b28eccffba2e45375592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1537d918176328d0f1abb6785ad5e748706e0fb9a4d16b667339d5f0f99a32de`

```dockerfile
```

-	Layers:
	-	`sha256:45f028fe5108cf2afe3ce0d28064ea82d20cdae9b6d22bf2f8306a2662abc83c`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 5.2 MB (5213109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d61e9ab1f66e74a638c7ab8a196240642b7fe9ad7d66ada32fc314109983bd`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f43fed57ce9e2541375deaa80b9e0007b6458e74e2fc526d37765871244315aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188213370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a203498a1d16002fa23f756cac7aec2e21a2cf20f3b037e3ce5cfa15fe0f5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:04:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:04:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:04:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:04:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:04:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013f94fa5909285f7a8f0a157a7bc02800e13c4272923015ac37c73386b29669`  
		Last Modified: Tue, 04 Aug 2026 03:05:21 GMT  
		Size: 88.4 MB (88420342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7bbebc6835c8639b26574b26bae6f7ecdc87cb7678339b9f76b63f90c4f0b1`  
		Last Modified: Tue, 04 Aug 2026 03:05:20 GMT  
		Size: 69.9 MB (69945350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396f93f1f4bf96027cf29ed4d73b6a08c8841d9f5834106776df5fa7fea7ede`  
		Last Modified: Tue, 04 Aug 2026 03:05:18 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffb8b9af9760eb44c69a0acee8055e2d4061cf19e22c06d0a508975fd72ab18`  
		Last Modified: Tue, 04 Aug 2026 03:05:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a208153ece84ec8ac10ac7b267eac464436a8793d0e1cbb375bf6ddb4a51f006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51652ee9dfaea30568ac142e1d8c2959f39934270267573ce5efe181b142c02`

```dockerfile
```

-	Layers:
	-	`sha256:b6fe7fb0e44cc5ce7917eb34dce660a8785511487c75a4dfe57bec0b8fae2852`  
		Last Modified: Tue, 04 Aug 2026 03:05:18 GMT  
		Size: 5.2 MB (5205932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fbb2a81b3de7ae81c66c60a49c905f87f2287bf8727751852763f7361bd8832`  
		Last Modified: Tue, 04 Aug 2026 03:05:18 GMT  
		Size: 16.6 KB (16646 bytes)  
		MIME: application/vnd.in-toto+json
