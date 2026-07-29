## `clojure:latest`

```console
$ docker pull clojure@sha256:03cc416e510fe3728e069fa224d5c29d38ab00924ca2a38c357e0ab0153b6fb8
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

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:c1514d1a3aca225ec8f54e83036b279ac517f2fa3a9509f9a9017d13d9913345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233923253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0405320890e5c1f585811cf5ff8430d62532cf2a3aab08e27ea2f49cb5adc68d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:52:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:52:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:52:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:52:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 29 Jul 2026 17:52:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 29 Jul 2026 17:52:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 29 Jul 2026 17:54:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 29 Jul 2026 17:54:21 GMT
ENV LEIN_ROOT=1
# Wed, 29 Jul 2026 17:54:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 29 Jul 2026 17:54:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:54:23 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:54:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:54:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:54:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:54:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e9929d4490e1783d4570c1cb3ae2c2c208265f2c6f6621d53ffa867c1c7322`  
		Last Modified: Wed, 29 Jul 2026 17:54:58 GMT  
		Size: 92.6 MB (92574586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ea42f6bb0cbb74d66aa0856183a119fc53aadea1bf4b68a5863977ff45f4e3`  
		Last Modified: Wed, 29 Jul 2026 17:54:55 GMT  
		Size: 20.1 MB (20117758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ffb15f8c910427ba42343b89fc21c849271f10bef034e7b959ebd81a26f2cf`  
		Last Modified: Wed, 29 Jul 2026 17:54:54 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cce87121ed1d7b1f14bdea2a378f09c9ca77c37105d44ad0f08d98f2bd86ca`  
		Last Modified: Wed, 29 Jul 2026 17:54:58 GMT  
		Size: 68.2 MB (68217258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a87fe23ffa7379e54f2c5be945da0b506cae129046902372ff5090cf57ce1e`  
		Last Modified: Wed, 29 Jul 2026 17:54:56 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4658fbf65ff9973605fccaa325630ad21688957fbf7f7908f6d1583e1a6decf`  
		Last Modified: Wed, 29 Jul 2026 17:54:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:9196409cf3541f663639c114aa8565d682981a450d7497e98f342acc181f6cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3185c2001300cf8b147295b707cbc84ba719c8f3c82bd70813ede77d0b5f7eba`

```dockerfile
```

-	Layers:
	-	`sha256:d24898e50ff3dc3c79042c03acf02e3aff0520c6296c8726fc174ea0b44c4946`  
		Last Modified: Wed, 29 Jul 2026 17:54:55 GMT  
		Size: 7.4 MB (7435947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb204e608dbf91a4f284911e05f55645ec971c67007b637eada200d1de7fc10`  
		Last Modified: Wed, 29 Jul 2026 17:54:54 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4bc089afef1648f7b069c80db01f41c94188711d1a09d6379683a8d5448a4ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232751811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b256a236ac967c79a8d80b3c38c905e106c673eb5a19e46d9770a17870b9f9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:59:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:59:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:59:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 29 Jul 2026 17:59:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 29 Jul 2026 17:59:46 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:01:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 29 Jul 2026 18:01:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 29 Jul 2026 18:01:06 GMT
ENV LEIN_ROOT=1
# Wed, 29 Jul 2026 18:01:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 29 Jul 2026 18:01:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:01:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:01:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:01:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:01:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:01:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:01:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb41bec558b1a111c3d8909a178e7585396b2c64d6f87db10a42ce45df205704`  
		Last Modified: Wed, 29 Jul 2026 18:01:43 GMT  
		Size: 91.5 MB (91542221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4084c382672721644ab9d5991c82620c8bc753506c895b4fcef1bd3538780`  
		Last Modified: Wed, 29 Jul 2026 18:01:40 GMT  
		Size: 19.9 MB (19940680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655c9e4dc1ef967c4faac85701f19e2e03fbb3a13273b08e1da0f10f14679407`  
		Last Modified: Wed, 29 Jul 2026 18:01:39 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d02cf8c2b952a5f300d5a95f25fcd90927a3ac7d89f9493f9f5590c77448b8`  
		Last Modified: Wed, 29 Jul 2026 18:01:43 GMT  
		Size: 68.4 MB (68368935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d295d93ff4faf2cdbcf6238e7e675be83a59aafee559795b6e94fe993615ef`  
		Last Modified: Wed, 29 Jul 2026 18:01:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30958c99e03ac13ed81579a08f88bc0bcc29bbc17697d6d8577113feefc2cc51`  
		Last Modified: Wed, 29 Jul 2026 18:01:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:71af0545254a8e628dab6a905da5c7d28026ae5a8c06bbf21eda85272dd82d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3567d740d3865d27c8d193a0c8ecd470d516cc828d4a7eecf200a2abc83074db`

```dockerfile
```

-	Layers:
	-	`sha256:d729c5d38ce82b94d7c17fd310936d5f2125742a355e333524d1b3c4678cc2af`  
		Last Modified: Wed, 29 Jul 2026 18:01:40 GMT  
		Size: 7.4 MB (7441683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eeb2d2b58259b4adb880c374e46fe2318621d1a38c430525012e12538231f44`  
		Last Modified: Wed, 29 Jul 2026 18:01:39 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce2b55a00bcc14c7dc413f5c7d478657b7f3686c54307b86472c9f237f2bc705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242922867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a0312882f502277b22de7c93ead9162e18ffb6cdf2be6349762bd9565672a0`
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
ENV LEIN_VERSION=2.13.0
# Wed, 29 Jul 2026 18:12:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 29 Jul 2026 18:12:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 29 Jul 2026 18:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 29 Jul 2026 18:24:10 GMT
ENV LEIN_ROOT=1
# Wed, 29 Jul 2026 18:24:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 29 Jul 2026 18:24:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:24:15 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:24:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:24:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:24:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:24:53 GMT
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
	-	`sha256:92b8f7d50879795e610206a6dbcd9780f92951ebbd7dadda0a695fea2634ebcd`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 20.3 MB (20332105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55885ae26dac260352f87a4b215b4fd8544bbbe8fb785a7a36a83160106669e8`  
		Last Modified: Wed, 29 Jul 2026 18:25:29 GMT  
		Size: 4.5 MB (4515241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e964efa75fab07555f13320a4616d0e43a695e6cca5786e54e7ef06cd12ad81`  
		Last Modified: Wed, 29 Jul 2026 18:25:31 GMT  
		Size: 73.8 MB (73818590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ee55250d5207086ce9bd4ab7c8d893a438072babdc38240d21d90d7f6e6640`  
		Last Modified: Wed, 29 Jul 2026 18:25:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e5d724e7c559bbf130f12ea241fa3c3a424592a42c80d409f5098abfc3dbe6`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:3fdfc969f30dd477e9a95fd391ac919b502bb30d234b41f67d247fff091c37ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dcb2a176fa43d8e301574c7dfe7dd77dce24d99031a8ae73cd3b589ace935c0`

```dockerfile
```

-	Layers:
	-	`sha256:18e6c44cd1944cb4b8e80132b7a1a395387c5896c5829b28d11e2e7fd975796e`  
		Last Modified: Wed, 29 Jul 2026 18:25:29 GMT  
		Size: 7.4 MB (7424463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd3fccf0bcf7d29c2574855dc62a398b046374609aaa230e47ff280567e219ac`  
		Last Modified: Wed, 29 Jul 2026 18:25:29 GMT  
		Size: 24.1 KB (24062 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:9ec4b292eca08c1536899b60d558424413e24199a2c63cd2992f8ad1ab900220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227213604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e108d3a18eaea8721faa7fb5f8123d18e849bf61acc6d56117cee7d0a58be14`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:16:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 29 Jul 2026 18:16:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 29 Jul 2026 18:16:40 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:18:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 29 Jul 2026 18:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 29 Jul 2026 18:18:16 GMT
ENV LEIN_ROOT=1
# Wed, 29 Jul 2026 18:18:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 29 Jul 2026 18:18:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:18:18 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:18:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:18:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:18:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:18:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:18:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b92fad9fa29010bae8f1fa3b26a841a25d4b11abe65a5b44fbd9151bac5314`  
		Last Modified: Wed, 29 Jul 2026 18:19:09 GMT  
		Size: 88.4 MB (88420317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331327e3d37b7480313db857fee7e9bf410681b78012edbc73767db0dce6f87a`  
		Last Modified: Wed, 29 Jul 2026 18:19:08 GMT  
		Size: 19.8 MB (19771230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925eb761bd275b7a4c8b9f875b053641f7da2cfc5e3e8140321aeecedda5ed67`  
		Last Modified: Wed, 29 Jul 2026 18:19:07 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7455ea92da6ac7b99d0d3957c258b711b9977a70327b5f01d1ba7e84072cc6f3`  
		Last Modified: Wed, 29 Jul 2026 18:19:09 GMT  
		Size: 67.3 MB (67348508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e9924d979573ffa7a5cd2701d5f0d0bbb86e5a131aaf9b0565db517f24f8db`  
		Last Modified: Wed, 29 Jul 2026 18:19:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f5198b60a38de3bfd959439adc02cf88aec06c6169f89c691f79ec1db02bff`  
		Last Modified: Wed, 29 Jul 2026 18:19:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:1b8eecffe8a145135afd62e7b4f2eea7de489b24d67813c70098ff80457b5368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49a1d5ecf76d66652116b6b5a42b62d17ef3cc78c15f44163ef051868841297`

```dockerfile
```

-	Layers:
	-	`sha256:e16815ebe68ce69be09bb9697e0d30b2ffbb66281b1026c21b9d201dea8690f6`  
		Last Modified: Wed, 29 Jul 2026 18:19:07 GMT  
		Size: 7.4 MB (7411828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e43f826ec0c1752c3b7c1f65cfca525088d3e8dbf18d857ae640856fbe453c21`  
		Last Modified: Wed, 29 Jul 2026 18:19:07 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json
