## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:d115adbe4163c19ebc2c83d47a617551a0a3ff7f2ee6a14178d89f2055e07857
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:83d211b83a2a3467ae19e92669c5dedc17d50ce79879d09bcfccf7d13ed5bb0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221307752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad91df1b1372a7cab8c1e092cc11ed038667b042ca3c94a669eb19ceeb51032c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 06:12:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 06:12:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 06:12:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 06:12:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 06:12:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 06:12:18 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 06:13:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 06:13:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 06:13:29 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 06:13:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 06:13:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 06:13:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 06:13:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77694ebcbc6f448e443fda20740d00f66806238ddf676d85b5ef708e444c4d87`  
		Last Modified: Tue, 06 Oct 2026 06:13:51 GMT  
		Size: 145.8 MB (145825452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fee68cb79fc192cd893987da4f56715e814d28a508f7223c3e90dd47915d922`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 22.4 MB (22448640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5304ed0933616a4fe2ec777b293faef6e502231b689161ae2ccf18f7b679e`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb006a89f4c6bdc14104cb4a0e687baebe351c2bcf0bffd5a93548eb72ce4542`  
		Last Modified: Tue, 06 Oct 2026 06:13:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7bc6e2a9eec3683901777bb51ae3fba3f3b87893025a8c1a22463a0a5a64d963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf8a72a55f5b40287b57571c9f380479ae6491939c275fb1a535e1ea6601a6c`

```dockerfile
```

-	Layers:
	-	`sha256:53721231058e2ddf427e886650b149da1ac8493167cebe36d662da90a5122ba0`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 4.3 MB (4289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60daa585d29b57a67cf701d66554101ef629177da565ac0754dc5412295136c`  
		Last Modified: Tue, 06 Oct 2026 06:13:47 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2a375528cf49795b2646cac07df0477099f73f80c82ae62d91066c4b4d5b9ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219795028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f707ab8ba21da7fdfeea963fb1ca31471708697f5cd60d369901785ee11106`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:52:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:52:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:52:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:52:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:52:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:52:43 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:53:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:53:52 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:53:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:53:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:53:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:53:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f79dc445c043b1a892d1ab583b23f93a98d9dfc32f68fca92628f7564aef420`  
		Last Modified: Tue, 06 Oct 2026 10:54:14 GMT  
		Size: 144.6 MB (144648241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72bf480911229896b4de9b778ba4552df2269ebf56606550f1756d107bb60ca`  
		Last Modified: Tue, 06 Oct 2026 10:54:12 GMT  
		Size: 22.2 MB (22229595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0fd74349344e91584d397137b49a38f792f0a0deff4017013123f114b0ff45`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c89825c5bfcc0f5ce28d901485b434751fc5c3f3cf64126ec9668e3cd2f5995`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e5a0a2fbbd2122a646f6b3aceb61406daf8c022d8bbbe7cbc04679e263c4e01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816beb43b0999e9b606fba1dfe19dfb82d41568014597305d3649cbb8bfad831`

```dockerfile
```

-	Layers:
	-	`sha256:f3c6aac65546d3babcb00499297ba37915b8005ee764c80c054a5fe5aefd1923`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 4.3 MB (4288914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeaa9dce8d08250128fa38b90bff690c33817209771c65be071a5204cb7d40da`  
		Last Modified: Tue, 06 Oct 2026 10:54:11 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

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

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

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
