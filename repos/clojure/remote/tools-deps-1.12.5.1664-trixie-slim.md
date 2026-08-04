## `clojure:tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:915759ba373207628720b96c30e51ac55d536d9996987e1494f2a82c6ff40551
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
$ docker pull clojure@sha256:5c35cea13f5186ff13d2d931d58aea0e51c5a8fd22d23fc61bf28aa17323a543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199892761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29bccaadba5fb81ec138d08965d01beb14d28615374a162fbf75d7759f27945`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:42:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:42:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:42:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:42:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:42:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:49:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:49:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:49:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:49:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:49:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8956397a45515bd221ae4dd70baa36802f7ac561573c520178196c8a0c5689ee`  
		Last Modified: Tue, 04 Aug 2026 05:45:53 GMT  
		Size: 91.9 MB (91914022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff51c5a131d52bcb82fc885b9ae6d767aa0df3d305e5d9f0c4f61b77c66e225`  
		Last Modified: Tue, 04 Aug 2026 05:49:49 GMT  
		Size: 74.4 MB (74376216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9db8f5ec528a0a25872344c5f952d8f2b5519c545600cd4e5086bc640f5b32`  
		Last Modified: Tue, 04 Aug 2026 05:49:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee0b09b235521122984326d4e638b550539e35b1a23154fe5de8e2e13bcb72`  
		Last Modified: Tue, 04 Aug 2026 05:49:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9cdd429d9b13946fe6c3f341e7be0ef8b2820eec90e746d9f6d111a1f403f04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b1a4ec980ae92429287509e03a38b2fd524358729a1adc2c63101798b49a03`

```dockerfile
```

-	Layers:
	-	`sha256:a5e192881aee27621824dc97e28d808558e8b4216df879de956f5fe98c4b086d`  
		Last Modified: Tue, 04 Aug 2026 05:49:47 GMT  
		Size: 5.2 MB (5213141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b6c9e6d719a2d4d4f56e7f6a9ba6b5d06fa9737ae07d91eac24383ec857d43`  
		Last Modified: Tue, 04 Aug 2026 05:49:47 GMT  
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
