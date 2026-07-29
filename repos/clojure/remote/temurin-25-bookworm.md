## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:38dd9fd3220442724e2526ea953d48709dfa91a48b0b6337f4799faf811ff88b
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

### `clojure:temurin-25-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:2bc75e7c778a409085d7f561d51dc29b5c7658056543f47ddf0b6e6490131b99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219217782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca78f87d070aa2852b999b9c96968ce1b618c4efef35903177b186706370855`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:57:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:17 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874ecbce61e2ca4e291818c62959796e11a024d5d3308f43f43fe00adadd4407`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea45f948ed20bc037e2865bd02de181b33039c21b13e1fb56de420e17bf43db`  
		Last Modified: Wed, 29 Jul 2026 17:57:54 GMT  
		Size: 78.1 MB (78144737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc9c5c7305870bfe716bdbee38076de9485e103db047fd8b3b2c547fc00658d`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8e5fd9dbbc5ffd31e2c84d1d68f4a7d47d4bb15b22a57128da307bcd1a156b`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b1b883a688b2e0feb70887e160f56872c27674b1be8af4a01c0b4843aeb2c204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d180e6532118677d4ffcfb2f9d530cdcb0e1d3bea41f89d43e09d423ea59289f`

```dockerfile
```

-	Layers:
	-	`sha256:69a8b4e919332f5b3bb6aa7ae87cbe50189ca53a38f71238b7f340b652c9adde`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 7.3 MB (7345564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfe829e3a3ec43a2288ddec4799521a952261ffa7b0de35d1edd72b46c7e0d2b`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c805084588c58c9de75368d0ee020e6d6d73ceb870de54a8d3ae6c9ff723d2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218056162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8214c35f9fbe31eb28ce95e3e4847a4c26b2a731a243bf4ce544189d67e85b9a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:05:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:50 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e424450d5a840c46a9563db5efee2bfe4b1cf2e1ae0ba8452e05d1e65833044f`  
		Last Modified: Wed, 29 Jul 2026 18:06:30 GMT  
		Size: 91.5 MB (91542247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403c3085afb62dca0ba76a58c1a24a04fc16976d97f6d29aca59466c49d9794e`  
		Last Modified: Wed, 29 Jul 2026 18:06:29 GMT  
		Size: 78.1 MB (78129182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5da3bead20ac4baa93390c68d613f0557b8ea0429ab08bb27675a1e470f851`  
		Last Modified: Wed, 29 Jul 2026 18:06:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72084c3108316713ac66a2e625b7e2be5c5fc1d4284c678124a249c7eb71bf9`  
		Last Modified: Wed, 29 Jul 2026 18:06:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5505c64d9dbfc35d5cff1dfc3712f93f55363454b0ed291a6f87b36c68a0afb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7fe200e1014effaabbb8cbdbba30791fcb94f294216fa74712ad855a0fce799`

```dockerfile
```

-	Layers:
	-	`sha256:5c18d46648c5de414157ef415e596294e26ea5ed928dd87d2301679e9a3f1282`  
		Last Modified: Wed, 29 Jul 2026 18:06:26 GMT  
		Size: 7.4 MB (7351396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3791f16a6f28bf39da84ce0ff4fac3d1ec2909f3273358b672c98ced8db2e70f`  
		Last Modified: Wed, 29 Jul 2026 18:06:25 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9fa3d502c495edd7b0463e4560d2e5ca99a002fd209af8638a01c46282d11857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228230162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f18cd24dafacdeccf6f7c79185cf5b0aec421a7e4a882d8e56e0358711aebf4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:12:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:12:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:12:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:12:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:12:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:12:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c6f443b4d9a950f9baf8fe51d333faf6d21838f16263510b5368616e9efcb8`  
		Last Modified: Wed, 29 Jul 2026 18:13:40 GMT  
		Size: 91.9 MB (91914023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32c65c5f90700631ec2c16dfe7661f5304b32e54f4a3e81e88188c143db5784`  
		Last Modified: Wed, 29 Jul 2026 18:13:39 GMT  
		Size: 84.0 MB (83973260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d83cac6211ce9a756c4e8e13426b822f97bbeac96e72591589bbd866e950f36`  
		Last Modified: Wed, 29 Jul 2026 18:13:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fff7b471016224779d17383d9ad4c78acb787d763066e981da056e15b0151cc`  
		Last Modified: Wed, 29 Jul 2026 18:13:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ce2ce48b354fbbf42059153eab12284101ae43e1473f9374def7067c179fa6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f05f3eff19f6911876779d04838342e62ebd7d53ee64c36cb1960e73a643a5`

```dockerfile
```

-	Layers:
	-	`sha256:5c91d82fe9297922d4fa17e2bc147894e370a79de3d2e999b3f93c48dfa63bd8`  
		Last Modified: Wed, 29 Jul 2026 18:13:36 GMT  
		Size: 7.3 MB (7334128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa1b3fe32ac922472a655ba7b63c830d166405a27f95bb722e5006976e6bc85b`  
		Last Modified: Wed, 29 Jul 2026 18:13:35 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:77930b61c4035be2689c6f424f5a53e468b707f2b0e8f3c1e7df9f2d863e45e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e0769462dc7447f69f8556bf88fb6de5cdc2274bbd60e4b51d9c3a2f8edc58`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:23:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:23:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:23:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:23:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:23:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:23:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:23:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:23:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:23:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:23:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc64e54722a591a3f9fff851f22d02113278a4ba4797a1963c9cf2606d3f84`  
		Last Modified: Wed, 29 Jul 2026 18:23:57 GMT  
		Size: 88.4 MB (88420325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5170a780cf9b06cb34042e7cd0bd7e655a9eb00b1b334ad0855f4b2f34a14073`  
		Last Modified: Wed, 29 Jul 2026 18:23:56 GMT  
		Size: 76.9 MB (76935500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca73f1dc0c32f91de67d343969383945fe17040d64b3ebd1fad4fe445787308a`  
		Last Modified: Wed, 29 Jul 2026 18:23:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39abd024431ebf52146b3c7e223aabf17ad4f7c99e7574ec7f9a477c06476ab6`  
		Last Modified: Wed, 29 Jul 2026 18:23:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a01162f926c12d3aabf4ac8a415a6f06801b801a725036b86c8f9d1a2cf9b621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7339370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed2575666efa93ef0475052b5a26f655cb8807915b3a256c4d98163aebff4ae`

```dockerfile
```

-	Layers:
	-	`sha256:d0ec6a4959206c81c828aadfd922f2b34cb17ce21e2bf81e89dc42aefd6ff537`  
		Last Modified: Wed, 29 Jul 2026 18:23:54 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3d96dc51a41a7e89b18346c3ea6ff4b9e67abf00112f809955116a0094a3c81`  
		Last Modified: Wed, 29 Jul 2026 18:23:54 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json
