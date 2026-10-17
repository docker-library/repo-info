## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:e285fe23d755a22a1a563756e02c86a69244d6b58273d4f4af9839a139b2f626
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0ef7714da65e088e44e5e32c9eaee49fb61b279418945efd74243c4ec8867635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221296392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df656428f6e45ad043bbbdfbed44037965ab3d84e6a8dad2d295ef75a152f636`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:48:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:29 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:02 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:04 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da528cbe9def3be79443cb0b04c0c2dbd9b07c0b19699df62118d35286c30426`  
		Last Modified: Sat, 17 Oct 2026 01:50:25 GMT  
		Size: 145.8 MB (145825484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7488875b76b7a237abd32e374502cbee6a32ded910df443171acdac86dc65a8d`  
		Last Modified: Sat, 17 Oct 2026 01:50:23 GMT  
		Size: 22.4 MB (22437254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e90587cf3bd7a11c774bc43ef888dc11fc5da48e6e6cf11f64e80fe9b56b8e`  
		Last Modified: Sat, 17 Oct 2026 01:50:22 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3e70018384f3762a39caab30600d16deb31e0466f07d800ff810cb9605beae`  
		Last Modified: Sat, 17 Oct 2026 01:50:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:43b8275d88bb89c0dfaf29d0d47b421506cd4fb5cf29e2f61cf3f53f943498ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f93b37be2960129f65a2417ab21b16db186576429ab71d58c294ef5fab1a7f6`

```dockerfile
```

-	Layers:
	-	`sha256:ad524dbddea50ba2f0b00be5db55aad5118c5f5b3661d68f3fcd65e1ffd16912`  
		Last Modified: Sat, 17 Oct 2026 01:50:22 GMT  
		Size: 4.3 MB (4289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:befa8fe71fca322285fe301357fd8f75a1bcbe15bbe9f65450ecca2f98ea8448`  
		Last Modified: Sat, 17 Oct 2026 01:50:22 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1e045e7c94e95b40c79f7d1968b1cca208d8613346c9b8e7eb0e86e2b3b66ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219795736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fb452fbcb9aff07f7f9d10cceb866d06068f6b878960b5de14609eaac69943`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:48:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:38 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:49:53 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:49:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:49:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff774942052603349185d3b2ecfa596ba0b7cecc074f6e8d27c2457187fe4e0`  
		Last Modified: Sat, 17 Oct 2026 01:50:15 GMT  
		Size: 144.6 MB (144648237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddca063802e41537c06325992fae20f72ff04cd6c48497e98fc0aba9c8679bb5`  
		Last Modified: Sat, 17 Oct 2026 01:50:12 GMT  
		Size: 22.2 MB (22230332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f281a56ff7af9d95cdc8efe435399572c04dbcf55fe85c2057f151c716837b`  
		Last Modified: Sat, 17 Oct 2026 01:50:12 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220708da7d452b181883faabbb6bf4010a5e2e257d0eb4e17c657deab045e9a8`  
		Last Modified: Sat, 17 Oct 2026 01:50:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cda8f8c8742200ca642aa097490fccc18c7c858f692ac048b3391c8dd3693f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169495fb8f043a628a7cc0983ee702059f36c98b26f70378cb040d56b59713e4`

```dockerfile
```

-	Layers:
	-	`sha256:eed1c3425d446ff7cf19a0fd51897634c69a7ba6c5eeac04b084975377c2a467`  
		Last Modified: Sat, 17 Oct 2026 01:50:12 GMT  
		Size: 4.3 MB (4288914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:902fbc0193bb466394e8a7ce39b9ca2d9846bde485624d6e65ea3857898afc74`  
		Last Modified: Sat, 17 Oct 2026 01:50:11 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9fac8a9f415ecb0346e616eb3a450c7b13a14cf88c999d96dd88dfc3cf04932c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.4 MB (225380964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c910a42fca8dc9af0fb6cea067982820ecb42ced2e580ff4cd59de8676a30e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:00:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:00:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:00:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:00:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:00:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:00:09 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:03:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:03:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:03:55 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:04:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:04:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:04:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:04:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf49d634e7971cf1f4ecb80149eb98c0eedff67ccd7e9ac4f6be8c0f51e883a`  
		Last Modified: Tue, 06 Oct 2026 10:04:59 GMT  
		Size: 145.7 MB (145671527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730f5d131e8508a09012d727fa323f7e7921a1902da3fff2f0dc6e02eeab964`  
		Last Modified: Tue, 06 Oct 2026 10:04:56 GMT  
		Size: 22.8 MB (22831047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a370bdd72b3f20438b0fa3802191bfcf4e8c937d58c5871d69407a5a866aca`  
		Last Modified: Tue, 06 Oct 2026 10:04:55 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88112bdfd3917c59698cca97e2b608b33a2aefdd3913d841266c22b11b3dd52`  
		Last Modified: Tue, 06 Oct 2026 10:04:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fa288eee3aca1b511a465df64b2a91ca89660ca0df7060d0993325c61a33cedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77faf0a4597a5f9d9e3e1af7692e9989b56f958f85b62ca85e11266da34d684c`

```dockerfile
```

-	Layers:
	-	`sha256:aa74fecedc3283a5c59446227c5c5b6c107f349a6f0a917674855e8b85bda28c`  
		Last Modified: Tue, 06 Oct 2026 10:04:55 GMT  
		Size: 4.3 MB (4291160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6c816201aacd9ccab5fdcca1a2a3a8f7e111699f037cd91dda708aeac55c40b`  
		Last Modified: Tue, 06 Oct 2026 10:04:55 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
