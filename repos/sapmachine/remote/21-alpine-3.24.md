## `sapmachine:21-alpine-3.24`

```console
$ docker pull sapmachine@sha256:28e93240a373ffec57eed6588b6bbe7b172c0226073f943121015aee514510e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:633c084daf3fbf7b01e583bcf956429bc4b88b577fc07de9921651edd377d313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 MB (224287534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556783036e650625ae698f7cf741103d6b2d85a09c208b2c30998aef4fe2b91f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:05 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 18 Nov 2026 16:42:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d86358a3d00a700a68e2f93df691463f5e628a3a7fb6d3b1915f0547c8ae2c`  
		Last Modified: Wed, 18 Nov 2026 16:42:26 GMT  
		Size: 220.4 MB (220433861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3809c1ab9668190bd97a90a7c31694ef3f5fa285697a51499210fce813be7325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 KB (520993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c7bc7050ef11539e3cd1de788cd15bd853f4a5db95c508aa985b625399b872`

```dockerfile
```

-	Layers:
	-	`sha256:fc95a82f51d304c3e1dcbd7bdd3606139309d50f988cf205bf267dc991894d16`  
		Last Modified: Wed, 18 Nov 2026 16:42:21 GMT  
		Size: 513.4 KB (513360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2d30da56667c2291d0d18abc7befb64a132ffd84f1d7a1c722d7ac612ed8c53`  
		Last Modified: Wed, 18 Nov 2026 16:42:21 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
