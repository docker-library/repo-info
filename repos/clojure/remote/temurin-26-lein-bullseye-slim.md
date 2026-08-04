## `clojure:temurin-26-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:fc2e3374cceccf25cb7de3a9030213f7974c71d3da48e00ca68cb534d6af014c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9c2531d1243f90b8265f2594f50b98fd645359c22715476ef94eb5399be1c94c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144944023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255708fa920afb20ec078feae4567670329e7e6660a982c28c9cf604cbd1b0f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:55:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:25 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0e6b848e5cffbb5abef1707ada851e4b37c100fad793642120aefa0d1de37`  
		Last Modified: Tue, 04 Aug 2026 02:56:47 GMT  
		Size: 94.5 MB (94524353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdff5b8167788ac11f7ab5d521ab5f45183d37bd542b22758fc6f2ebf72b21a1`  
		Last Modified: Tue, 04 Aug 2026 02:56:45 GMT  
		Size: 15.6 MB (15644307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114b748fe202f5d29fc54d16ae63fc3d699bc8a8c6303fb66afad3d2a27c8b6a`  
		Last Modified: Tue, 04 Aug 2026 02:56:44 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2f19d71fe4f9fded91d7a554f8a978b2f9f2f0def3846fbeacf6f063e43092`  
		Last Modified: Tue, 04 Aug 2026 02:56:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f899b41a44baf7b9ac8179d1f48c8f64c71bec68cf9bcf318cdeb8baf94094bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bed840d075f0c4e3dd58fe96542e2050681d425b7abaa3c485c6abbc8ed711f`

```dockerfile
```

-	Layers:
	-	`sha256:90d91725d6857ad0f14b1ac9ed56763e5cab2dc8d1b8bea87ff04578ba770c7f`  
		Last Modified: Tue, 04 Aug 2026 02:56:45 GMT  
		Size: 3.0 MB (3002003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25c090527e86b01a0a71c65a3bf7f4aef1a24553d5369423b92106b036731333`  
		Last Modified: Tue, 04 Aug 2026 02:56:44 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7460daf759a99b7352e10852e4f3ae340bda4333f7c94cb2100d3de7939739a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142388474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47a406c44ca521d7f223d657076e897a08bfde15c7322e72a5f2f7a4509053e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:55:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b9a388ee8f266c18a480b8fc8da3ad6c55bf2a8b3c59783f5c1b3af2830c15`  
		Last Modified: Tue, 04 Aug 2026 02:57:21 GMT  
		Size: 93.5 MB (93504367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30cd4681029953f613feee8a1509c5bd66a6878045689656788ae46039b2d7f`  
		Last Modified: Tue, 04 Aug 2026 02:57:16 GMT  
		Size: 15.6 MB (15619491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2768b631275252ec2db6b028732fd187485050c3e172735c0327560d8fbe646`  
		Last Modified: Tue, 04 Aug 2026 02:57:15 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6680577db146514b870812fd50ee6f2af2b222b0abc5b3a5b5307ea260e5f`  
		Last Modified: Tue, 04 Aug 2026 02:57:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:310d3d78b4e318f498dd6fdcad9486b4e24179476e865ecf45d65d1c44113a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818478fe0fcff66101dd29ed5cfee16d3b3e50eb3746a68d15d71a39de31f247`

```dockerfile
```

-	Layers:
	-	`sha256:792a2429e68d22e72df381d285998d2f331926ba6758b09a8faa26c2f77ab867`  
		Last Modified: Tue, 04 Aug 2026 02:57:15 GMT  
		Size: 3.0 MB (3001609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c40d52a55055b6a8906d2e215dc4f59341513ce98015d18d554e999f0c16406`  
		Last Modified: Tue, 04 Aug 2026 02:57:14 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
