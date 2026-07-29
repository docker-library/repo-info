## `clojure:tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:d7a93f6a3a817ad0b458640d12a34c0183406bc283f80b1524af695073f95596
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2443cea14f64e6685fd1dee7f5ddfd54ce1289cf3224c02968351c0744b51dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178941479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a8500a5bc2c76064ddd07b5d27f963d5386d215ee4b37bf39202fbfe8c70cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:57:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98da83d8632b4b4a66bb887e6ff39a849d83f8e742e1bd8980a0ac310681d724`  
		Last Modified: Wed, 29 Jul 2026 17:57:59 GMT  
		Size: 92.6 MB (92574585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e22f881f52d091c796cbefce916370603d299efa9fb2509887aa183372294e`  
		Last Modified: Wed, 29 Jul 2026 17:57:59 GMT  
		Size: 56.1 MB (56106094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4a70167290f91ac76ee9e8577d78e553c5b8d181e3d2c95896c64361ca4a18`  
		Last Modified: Wed, 29 Jul 2026 17:57:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743a1115a2351ad3ea68ed929c16bec6429377346165d7e46a9cf73dc5a1143d`  
		Last Modified: Wed, 29 Jul 2026 17:57:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:531bbe9d0d64255c16fe851380fa294db8471b13d3edb06ebd6bd25c4f249cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56929d2611918d744661b093aa539065ab8c9062642d4215441bad702c5e070e`

```dockerfile
```

-	Layers:
	-	`sha256:339e10e10524a9329c49ed054b8f392a239f1cebe4e6ffdf810ec329f92b195b`  
		Last Modified: Wed, 29 Jul 2026 17:57:57 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1232c469120a3fbe03bd617afa6da96d063fc3f0fdb865e893db0dbd46686cc8`  
		Last Modified: Wed, 29 Jul 2026 17:57:56 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5476bac01bf1efd1b12ec2416a95955c8eb055de089f81b905171629f9b8392c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176568261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11202ab868fee21b82274f4945963c0fb8fb77311575012d46f6f6fe5a8b7b9c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:06:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:02 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de0b258b72ba2bbc2cd6971be5220e04cc8f89d317a80b62d0688685675da3b`  
		Last Modified: Wed, 29 Jul 2026 18:06:36 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba806b103106b6132652c32f9d1f75f7dcdd326fa9edfcc8ed6b026a72d4a27a`  
		Last Modified: Wed, 29 Jul 2026 18:06:35 GMT  
		Size: 56.3 MB (56275988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4db204d9c2b29ef01536479b12548d17ecd4efbec1669d107579acaee34433f`  
		Last Modified: Wed, 29 Jul 2026 18:06:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1454425ad84537ec67327e8521c3b16df46f5ae1e2485fa0c92e563c2ab7bbce`  
		Last Modified: Wed, 29 Jul 2026 18:06:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c379e4236fe49533d8c6536714633fda05eed3f45036b3fa9c5eada436259348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f392293c229f05105a3b9c665451022dbd29b31e988d561a71e906ab85934a8e`

```dockerfile
```

-	Layers:
	-	`sha256:a472334512826ecf449342762dce3ed97c4645be858c6183b53eb22bbdcba70f`  
		Last Modified: Wed, 29 Jul 2026 18:06:33 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22bd66e748a090084ae0c3969fb2d3d82207d6dc7bb5308a3247c36f1b7ca482`  
		Last Modified: Wed, 29 Jul 2026 18:06:32 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
