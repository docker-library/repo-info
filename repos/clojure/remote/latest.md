## `clojure:latest`

```console
$ docker pull clojure@sha256:3e3b2bd43c07bd58d4ff9665633a23503cc5bdf9f442b61c51ab54302b324e1b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:f621d6c6186a45dace55569e8f4d45bf85675db2ffbf11363eaf68ae99b54ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237860047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a262ee41b449628f6051bac84ccdcaebf933c1e14cdadffdcbfab9e895170e57`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:03:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:24 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:04:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:04:32 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:04:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:04:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:04:34 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:04:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:04:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5ca19a403d30ab1d7fb13afdb84c92e9f3b2cbffae8661e16c2b99ab506688`  
		Last Modified: Thu, 29 Oct 2026 20:05:08 GMT  
		Size: 92.6 MB (92598854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a51cfc43357802768c818b560b8e75123ce549c29e838a59f1887a843da89`  
		Last Modified: Thu, 29 Oct 2026 20:05:06 GMT  
		Size: 20.1 MB (20132708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9d39a45242dfdbe906b3331539aec73b1d7187583dd4d623b3b944e30eacc6`  
		Last Modified: Thu, 29 Oct 2026 20:05:05 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d201534fb24bd8f63e47aab30f8464afdba58150a616daa99faad727f7e4cd`  
		Last Modified: Thu, 29 Oct 2026 20:05:08 GMT  
		Size: 72.1 MB (72087637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74de9d24cdad77254e88bb0854fa7ff1c3e03a792b2a5a4c00fedca70140f9ff`  
		Last Modified: Thu, 29 Oct 2026 20:05:06 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e878ea6391019fb8fa97800749cf385f90d28ad10b1497bb7ddf3baaf6e980`  
		Last Modified: Thu, 29 Oct 2026 20:05:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:753b2ece299bbb1d07a04b6e4d7f1bfd7f0185f84e46f452068ab073dd70dd2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd164cc3667fdf70e7711368a108727b1ec9a0972696522d99d35d3f8437353`

```dockerfile
```

-	Layers:
	-	`sha256:9757d801f765d4c68108c909468066aacdacb745dc39f18f3a189e2e65581d7c`  
		Last Modified: Thu, 29 Oct 2026 20:05:05 GMT  
		Size: 7.4 MB (7439609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c3b244cdbc87cf16bc9877d02c6dd685145c7799d4013132fb258b9457888b5`  
		Last Modified: Thu, 29 Oct 2026 20:05:05 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61e6567bb1daa0e14f95e3f686edc723a5e4a1a324d188abd84ce786f2db071f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236682804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee480d332a0f81cd2f63e7f7c039d7157896aa766b68f0b6432a22479fb3509`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:19 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:21 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dcbb0a971fb0b4be5fd35c7c63ac81269012a03fa77bbe1985be8d6d192c3a`  
		Last Modified: Thu, 29 Oct 2026 20:05:58 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597e9e72c9ce8dd344eecb322beba4564831bb3d91858df8895b57f2873e1e61`  
		Last Modified: Thu, 29 Oct 2026 20:05:56 GMT  
		Size: 20.0 MB (19977293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61de9acacfebcda5c7d67cafe16c3c8db1de3bdfb0b53daaaf397613507f9099`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370b5bd2137b7aa03464acedfe0aaf1185e1d71ebbf94fe94d44ca8362a3f4d7`  
		Last Modified: Thu, 29 Oct 2026 20:05:58 GMT  
		Size: 72.3 MB (72258443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21af0802adef967fc44122aa2539476d694b29a17e7ccc39286b348b336599c4`  
		Last Modified: Thu, 29 Oct 2026 20:05:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559eca8edc39b25a83ee96e3ff83755745d3d13d93637cf4c8944d6b7fadb940`  
		Last Modified: Thu, 29 Oct 2026 20:05:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:ecc96ba2da0cc46cac6ea953f7a75f86487516effc25d0357b109aa96eed2d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09fa6e5c299eb18a208c91f592e917a8816fa68367ed0e386ea683ef0a885bd`

```dockerfile
```

-	Layers:
	-	`sha256:d8d2f3188f9767e6368bd71377bab9d7728cf889e0b6531d0f01464b0a052695`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 7.4 MB (7445345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a61b8405a7b1a27260f5703acd35e4f42a3425c7f89d60483c377f3c398aa09`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:dcf3b77a5e3a86cf049677d96275cddefe7eefa54889ffb25e81b7a3c90b507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245057142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ba1031c30dc9b5104a9b8842e2f54fc1e9e349638d15300eefa3642f553a07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:24:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:24:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:24:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:27:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:27:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:27:38 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:27:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:27:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:27:43 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:28:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:28:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:28:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:28:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:28:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5412d3cceb0b365d7d52fcdf1d85bc427c038b51388bfd312d83464dc78689`  
		Last Modified: Thu, 29 Oct 2026 20:29:07 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d7ae62f1ce411db08c543d50ca4db1e6592196c598032f6ec360e2a6dd1fa`  
		Last Modified: Thu, 29 Oct 2026 20:29:04 GMT  
		Size: 20.4 MB (20357335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731c22d8caa9d2653c9944fc8a7ce40734685b703e7bf8505fa207b5ed13fd55`  
		Last Modified: Thu, 29 Oct 2026 20:29:03 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8678d2c0f6b07f0f7b92506722e992a6621c801e43a0b4160c23ac8366b00938`  
		Last Modified: Thu, 29 Oct 2026 20:29:07 GMT  
		Size: 77.7 MB (77705523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f2780b70e6c277a781183c65fd08876290d97ab50e0126c72c3f6ee1cdd310`  
		Last Modified: Thu, 29 Oct 2026 20:29:05 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b206265b46106e4261b1a6647b3b5524c6bb19be060846aa3123228cfc68c4`  
		Last Modified: Thu, 29 Oct 2026 20:29:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:5d1a3e1d27ee3e5fa20d100be5cc1f23d67be8bf2e58f46487e3361708b58415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c17cc614711c1041a9ee1cf35f8e04b561378afa0e812fe6ea87da7cd4339a`

```dockerfile
```

-	Layers:
	-	`sha256:de325e09525512f0a35bb316c4b7c2f5afba766620d3d0600fdfbdfa9c1298e6`  
		Last Modified: Thu, 29 Oct 2026 20:29:03 GMT  
		Size: 7.4 MB (7426260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fb6ed3585f24e80fded43844aea965a4a9d876d12a481ef78aac1c52bdcaccc`  
		Last Modified: Thu, 29 Oct 2026 20:29:02 GMT  
		Size: 25.0 KB (25014 bytes)  
		MIME: application/vnd.in-toto+json
